package com.wrongtomatofactory.ansi.backend;

import com.wrongtomatofactory.ansi.CodePage437Character;
import com.wrongtomatofactory.ansi.CodePage437Charset;
import flash.display.BitmapData;
import flash.geom.Point;

using com.wrongtomatofactory.ansi.CodePage437Charset;

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
	
	public function renderCP437CharacterObject( character : CodePage437Character, targetBitmapData : BitmapData )
	{
		this.renderCP437Character( 
									character.character, 
									character.foregroundColor, 
									character.backgroundColor, 
									new Point( character.x, character.y ), 
									targetBitmapData 
								);
	}
	
	public function renderCP437Character(
										character : CodePage437Charset,
										textColor : CGAColor,
										backgroundColor : CGAColor,
										characterLocation : Point,
										targetBitmapData : BitmapData
										)
	{
		super.renderCharacter( character.toCharacterIndex(), textColor, backgroundColor, characterLocation, targetBitmapData );
	}
	
}