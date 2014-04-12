package com.wrongtomatofactory.ansi;

import com.wrongtomatofactory.ansi.CodePage437;
import flash.display.BitmapData;

/**
 * ...
 * @author Wrong Tomato Factory
 */
 
class CodePage437Renderer extends ANSIRenderer
{

	public function new() 
	{
		var characterMapSource : BitmapData = new CodePage437BitmapData( 288, 128, true );
		
		super( characterMapSource, 9, 16 );		
	}
	
}