package com.wrongtomatofactory.ansi;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class CodePage437Character
{

	public var x ( get; set; ) : Int;
	
	public var y ( get; set; ) : Int;
	
	public var backgroundColor ( get; set; ) : CGAColor;
	
	public var foregroundColor ( get; set; ) : CGAColor;
	
	public var character ( get; set; ) : CodePage437Charset;
	
	public var isDirty ( get; null; ) : Bool;
			
	private var _x : Int;
	
	private var _y : Int;
	
	private var _backgroundColor : CGAColor;
	
	private var _foregroundColor : CGAColor;
	
	private var _character : CodePage437Charset;
	
	private var _isDirty : Bool;
	
	public function get_x() : Int
	{
		return _x;
	}
	
	public function set_x( value : Int ) 
	{
		_x = value;
		isDirty = true;
	}
	
	public function get_y() : Int
	{
		return _y;
	}
	
	public function set_y( value : Int )
	{
		_y = value;
		isDirty = true;
	}
	
	public function get_backgroundColor() : CGAColor
	{
		return _backgroundColor;
	}
	
	public function set_backgroundColor( value : CGAColor )
	{
		_backgroundColor = value;
		isDirty = true;
	}
	
	public function get_foregroundColor() : CGAColor
	{
		return _foregroundColor;
	}
	
	public function set_foregroundColor( value : CGAColor )
	{
		_foregroundColor = value;
		isDirty = true;
	}
	
	public function get_character() : CodePage437Character
	{
		return _character;
	}
	
	public function set_character( value : CodePage437Character )
	{
		_character = value;
		isDirty = true;
	}
	
	public function get_isDirty() : Bool
	{
		return _isDirty;
	}
	
	public function set_isDirty( value : Bool )
	{
		_isDirty = true;
	}
	
	public function new( x : Int, y : Int, backgroundColor : CGAColor, foregroundColor : CGAColor, character : CodePage437Charset ) 
	{
		_x = x;
		_y = y;
		_backgroundColor = backgroundColor;
		_foregroundColor = foregroundColor;
		_character = character;
		_isDirty = true;
	}
	
}