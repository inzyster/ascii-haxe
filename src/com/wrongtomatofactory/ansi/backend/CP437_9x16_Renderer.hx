package com.wrongtomatofactory.ansi.backend;

import flash.display.BitmapData;
import com.wrongtomatofactory.ansi.CodePage437Charset;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class CP437_9x16_Renderer extends CodePage437Renderer
{

	public function new() 
	{
		var characterMapSource : BitmapData = new CodePage437_9x16_BitmapData( 288, 128, true );
		
		super( characterMapSource, 9, 16 );		
	}
	
}