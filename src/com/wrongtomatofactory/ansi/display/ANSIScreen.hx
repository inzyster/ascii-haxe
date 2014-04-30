package com.wrongtomatofactory.ansi.display;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class ANSIScreen
{
	import com.wrongtomatofactory.ansi.CGAColor;
	import flash.display.BitmapData;
	import flixel.FlxSprite;

	private var _colums : UInt;
	private var _rows : UInt;
	
	private var _layers : Array< ANSILayer >;
	private var _backgroundColor : CGAColor;
	
	private var _displayObject : FlxSprite;
	private var _canvas : BitmapData;
	
	public function getBackgroundColorAt( layer : UInt, column : UInt, row : UInt ) : CGAColor
	{
		return CGAColor.Transparent;
	}
	
}