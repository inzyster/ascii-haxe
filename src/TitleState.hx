package ;

import com.wrongtomatofactory.ansi.backend.ANSIRenderer;
import com.wrongtomatofactory.ansi.backend.CodePage437Renderer;
import com.wrongtomatofactory.ansi.CodePage437Character;
import com.wrongtomatofactory.ansi.CodePage437Charset;
import flash.display.BitmapData;
import flash.geom.Point;
import flash.geom.Rectangle;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import com.wrongtomatofactory.ansi.CGAColor;
import com.wrongtomatofactory.ansi.io.ANSIParser;

using com.wrongtomatofactory.ansi.CGAColor;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class TitleState extends FlxState
{
	
	private var _canvas:BitmapData;
	
	private var _isDirty:Bool;
	
	private var _counter:UInt;
	
	private var _sprite:FlxSprite;
	
	private var _renderer:CodePage437Renderer;
	
	private var _parser:ANSIParser;
	
	override public function create()
	{
		super.create();
		
		_renderer = new CodePage437Renderer();

		_parser = new ANSIParser();
		_parser.parse( "ans/stuff.ans" );	
		
		var spr:FlxSprite = new FlxSprite(0, 0);
		spr.makeGraphic(FlxG.width, FlxG.height, _parser.defaultBackgroundColor.toARGBValue());				
	
		this.add(spr);
		
		_sprite = spr;
		
		_canvas = spr.pixels;
		
		_isDirty = true;
				
	}
	
	override public function update()
	{
		super.update();
		
		if (_isDirty)
		{
		
			_canvas.lock();			

			for ( i in 0..._parser.characters.length )
			{
				var currentCharacter : CodePage437Character = _parser.characters[i];
				if ( currentCharacter.x < 80 && currentCharacter.y < 25 && currentCharacter.isDirty )
				{
					currentCharacter.isDirty = false;
					_renderer.renderCP437CharacterObject( currentCharacter, _canvas );
				}
			}
			
			_canvas.unlock();
		
			#if flash
			{
				_sprite.pixels = _canvas;
				_sprite.update();
			}
			#end		
			
		}
		
		_counter = ++_counter % 20;
		
		_isDirty = _counter % 10 == 0;
		
	}
	
}