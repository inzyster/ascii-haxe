package com.wrongtomatofactory.ansi;

import com.wrongtomatofactory.ansi.CGAColor;
import flash.display.BitmapData;
import flash.display.BitmapDataChannel;
import flash.geom.Rectangle;
import flash.geom.Point;
import openfl.Assets;

using com.wrongtomatofactory.ansi.CGAColor;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class ANSIRenderer
{
	
	//{ Private variables
	
	/**
	 * Glyph source bitmap data
	 */
	private var _characterMap : BitmapData;
	
	/**
	 * Colored glyphs data
	 */
	private var _characterTextures : Array< BitmapData >;
	
	/**
	 * Color palette bitmap datas
	 */
	private var _colorPalette : BitmapData;
		
	/**
	 * Character width in pixels
	 */
	private var _characterWidth : UInt;
	
	/**
	 * Character height in pixels
	 */
	private var _characterHeight : UInt;
	
	/**
	 * Character map width in characters
	 */
	private var _characterMapColumns: UInt;	
	
	/**
	 * Character map height in characters
	 */
	private var _characterMapRows: UInt;	
	
	//}
	
	//{ Constructors
	
	/**
	 * Creates a new ANSI renderer
	 * @param	characterMapSource	The source for glyph data (can be either a BitmapData object or path to an asset containing the glyphs). The bitmap data should be transparent with a solid background and transparent glyphs.
	 * @param	characterWidth		Character width in pixels
	 * @param	characterHeight		Character height in pixels
	 */
	public function new(
						characterMapSource : Dynamic, 
						characterWidth : UInt, 
						characterHeight: UInt
						)
	{
		if ( Std.is( characterMapSource, BitmapData ) )
		{
			_characterMap = characterMapSource;
		}
		else if ( Std.is ( characterMapSource, String ) )
		{
			_characterMap = Assets.getBitmapData( characterMapSource );
		}
		
		_characterWidth = characterWidth;
		_characterHeight = characterHeight;
		
		_characterMapColumns = Std.int( _characterMap.width / _characterWidth );
		_characterMapRows = Std.int( _characterMap.height / _characterHeight );
		
		var allColors : UInt = CGAColorHelper.colorsCount();
		
		_colorPalette = new BitmapData( allColors * _characterWidth, _characterHeight, true, 0xFFFFFFFF );
		
		_characterTextures = new Array< BitmapData >();
		
		for ( i in 0...allColors )
		{
			var currentColor : UInt = CGAColorHelper.fromPaletteIndex( i ).toARGBValue();
			_colorPalette.fillRect( _rectangleForCharacterAtIndex( i ), currentColor );
			
			var currentGlyphTexture : BitmapData = new BitmapData ( _characterMap.width, _characterMap.height, true, currentColor );
			currentGlyphTexture.copyChannel( _characterMap, _characterMap.rect, new Point( 0.0, 0.0 ), BitmapDataChannel.ALPHA, BitmapDataChannel.ALPHA );
			
			_characterTextures.push( currentGlyphTexture );
		}
	}
	
	//}
	
	//{ Public methods 
	
	public function renderCharacter( 
									characterIndex : UInt, 
									textColor : CGAColor,
									backgroundColor : CGAColor,
									targetPoint : Point,
									targetBitmapData : BitmapData
									)
	{
		var backgroundColorIndex : UInt = backgroundColor.toPaletteIndex();
		var textColorIndex : UInt = textColor.toPaletteIndex();
		
		targetBitmapData.copyPixels( _colorPalette, _rectangleForCharacterAtIndex( textColorIndex ), targetPoint );
		targetBitmapData.copyPixels( _characterTextures[ backgroundColorIndex ], _rectangleForCharacterAtIndex ( characterIndex ), targetPoint, null, null, true );
	}
	
	public inline function getPointForCharacterAt( characterLocation: Point ) : Point 
	{
		return new Point( characterLocation.x * _characterWidth, characterLocation.y * _characterHeight );
	}
	
	//}
	
	//{ Private methods
	
	private inline function _rectangleForCharacterAtIndex( characterIndex: UInt) : Rectangle
	{
		return new Rectangle( 
							( characterIndex % _characterMapColumns ) * _characterWidth, 
							Math.floor( characterIndex / _characterMapColumns ) * _characterHeight, 
							_characterWidth, 
							_characterHeight 
							);
	}	
	
	//}
	
}