package com.wrongtomatofactory.ansi.display;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class ANSILayer extends ANSIDisplayObject
{
	import com.wrongtomatofactory.ansi.CGAColor;

	private var _columns : UInt;
	private var _rows : UInt;
	
	private var _contentOffsetTop : Int;
	private var _contentOffsetLeft : Int;
	
	private var _contentColumns : UInt;
	private var _contentRows : UInt;
	
	private var _backgroundColor : CGAColor;
	
	private var _objects : Array< ANSIDisplayObject >;
		
}