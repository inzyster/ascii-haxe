package com.wrongtomatofactory.ansi.display;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class ANSIDisplayObject
{

	private var _x : Int;
	private var _y : Int;
	
	private var _columns : UInt;
	private var _rows : UInt;
	
	private var _isDirty : Bool;
	
	private var _characters : Array< CodePage437Character >;
	
}