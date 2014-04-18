package com.wrongtomatofactory.ansi.io;

import com.wrongtomatofactory.ansi.CGAColor;
import com.wrongtomatofactory.ansi.CodePage437Character;
import flash.utils.ByteArray;
import openfl.Assets;
import com.wrongtomatofactory.ansi.CodePage437Charset;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class ANSIParser
{

	
	
	public var width ( get, never ) : UInt;
	
	public var height ( get, never ) : UInt;
	
	public var characters ( get, never ) : Array< CodePage437Character >;
	
	public var defaultBackgroundColor ( get, never ) : CGAColor;
	
	public var newLineSeparator : String = "\r\n";
	
	
	private var _width : UInt;
	
	private var _height : UInt;
	
	private var _characters : Array< CodePage437Character >;
	
	
	private var _defaultBackgroundColor : CGAColor;
	private var _defaultForegroundColor : CGAColor;
	
	private var _currentBackgroundColor : CGAColor;
	private var _currentForegroundColor : CGAColor;
	private var _currentRow : UInt;
	private var _currentColumn : UInt;		
	private var _backgroundModifier : UInt;
	private var _foregroundModifier : UInt;
	
	public function get_width() : UInt
	{
		return _width;
	}
	
	public function get_height() : UInt
	{
		return _height;
	}
	
	public function get_characters() : Array< CodePage437Character >
	{
		return _characters;
	}
	
	public function get_defaultBackgroundColor() : CGAColor
	{
		return _defaultBackgroundColor;
	}
	
	
	
	public function new()
	{
		this.clear();
	}
	
	public function parse( fileName : String ) : Bool
	{
		var fileData = Assets.getText( fileName );
		
		var lines : Array< String > = fileData.split( this.newLineSeparator );
		
		_currentColumn = 0;
		_currentRow = 0;
		
		for ( line in lines )
		{
			_parseLine( line );
			_currentRow++;
			if ( _currentColumn + 1 > _width )
			{
				_width = _currentColumn + 1;
			}
			_currentColumn = 0;
		}
		_height = _currentRow - 1;
		
		return true;
	}
	
	public function clear()
	{
		_characters = new Array< CodePage437Character >();
		_defaultBackgroundColor = CGAColor.Transparent;
		_width = 0;
		_height = 0;
		_backgroundModifier = 0;
		_foregroundModifier = 0;
	}
	
	
	private function _parseLine( line : String )
	{
		if ( line.charCodeAt( 0 ) == 0x1A )
		{
			if ( line.substr( 1, 5 ) == "SAUCE" )
			{
				return;
			}
		}
		
		var currentCode : Int;
		var currentChar : String;

		var isControlSequence : Bool = false;
		
		var i : Int = 0;
		while ( i < line.length )
		{
			isControlSequence = false;
			currentCode = line.charCodeAt( i );
			currentChar = line.charAt( i );
			if ( i < line.length - 1 )
			{
				if ( currentCode == 0x1B )
				{
					if ( line.charAt( i + 1 ) == "[" )
					{
						i += 2;
						var controlSequence : String = "";
						while ( true )
						{
							currentChar = line.charAt( i );
							controlSequence += currentChar;
							i++;
							if ( currentChar == "m" || currentChar == "C" )
							{
								break;
							}
						}
						if ( currentChar == "m" )
						{
							_setCurrentColors( controlSequence.substr( 0, controlSequence.length - 1 ) );
						}
						else if ( currentChar == "C" )
						{
							_advanceCursor( controlSequence.substr( 0, controlSequence.length - 1 ) );
						}
						isControlSequence = true;
					}
				}
			}
			
			if ( !isControlSequence )
			{
				_characters.push( new CodePage437Character( 
															_currentColumn, 
															_currentRow, 
															_currentBackgroundColor, 
															_currentForegroundColor, 
															CodePage437CharsetHelper.fromCharacterIndex( currentCode )
															));
				_currentColumn++;
				i++;
			}
			
		}
		
		trace( line );
	}

	private function _advanceCursor( controlSequence : String )
	{
		var columns = Std.parseInt( controlSequence );
		_currentColumn += columns;
	}
	
	// 5 - bright background
	// 1 - bright text color
	private function _setCurrentColors( controlSequence: String )
	{
		if ( controlSequence == "0" )
		{
			_currentForegroundColor = _defaultForegroundColor;
			_currentBackgroundColor = _defaultBackgroundColor;
			_backgroundModifier = 0;
			_foregroundModifier = 0;
		}
		else 
		{
			var isDefaults : Bool = false;
			var parameters : Array< String > = controlSequence.split( ";" );
			for ( param in parameters )
			{
				var paramValue = Std.parseInt( param );
				if ( paramValue == 0 ) 
				{
					if ( _defaultBackgroundColor == CGAColor.Transparent )
					{
						isDefaults = true;
					}
					_backgroundModifier = 0;
					_foregroundModifier = 0;
				}
				else if ( paramValue == 5 )
				{
					_backgroundModifier = 8;
				}
				else if ( paramValue == 1 )
				{
					_foregroundModifier = 8;
				}
				if ( paramValue >= 40 )
				{
					_currentBackgroundColor = CGAColorHelper.fromANSIIndex( paramValue - 40 + _backgroundModifier );
				}
				else if ( paramValue >= 30 )
				{
					_currentForegroundColor = CGAColorHelper.fromANSIIndex( paramValue - 30 + _foregroundModifier );
				}
				if ( isDefaults )
				{
					_defaultBackgroundColor = _currentBackgroundColor;
					_defaultForegroundColor = _currentForegroundColor;
				}
			}
		}
	}
}