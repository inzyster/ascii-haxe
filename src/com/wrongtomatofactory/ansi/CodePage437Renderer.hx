package com.wrongtomatofactory.ansi;

import com.wrongtomatofactory.ansi.CodePage437Character;
import flash.display.BitmapData;
import flash.geom.Point;

using com.wrongtomatofactory.ansi.CodePage437Character;

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
	
	public function renderCP437Character(
										character : CodePage437Character,
										textColor : CGAColor,
										backgroundColor : CGAColor,
										characterLocation : Point,
										targetBitmapData : BitmapData
										)
	{
		super.renderCharacter( character.toCharacterIndex(), textColor, backgroundColor, characterLocation, targetBitmapData );
	}
	
}