package ;

import com.wrongtomatofactory.ansi.ANSIRenderer;
import com.wrongtomatofactory.ansi.CodePage437Renderer;
import com.wrongtomatofactory.ansi.CodePage437Character;
import flash.display.BitmapData;
import flash.geom.Point;
import flash.geom.Rectangle;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import com.wrongtomatofactory.ansi.CGAColor;

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
	
	override public function create()
	{
		super.create();
		
		_renderer = new CodePage437Renderer();
		
		var spr:FlxSprite = new FlxSprite(0, 0);
		spr.makeGraphic(FlxG.width, FlxG.height, CGAColor.LightGray.toARGBValue());				
		
		this.add(spr);
		
		_sprite = spr;
		
		_canvas = spr.pixels;
		
		_isDirty = true;
		
		_counter = 0;
		
	}
	
	override public function update()
	{
		super.update();
		
		if (_isDirty)
		{
		
			_canvas.lock();			
			
			_renderer.renderCP437Character( CodePage437Character.NULL, CGAColor.White, CGAColor.Black, new Point( 0, 0 ), _canvas );
			_renderer.renderCP437Character( CodePage437Character.LATIN_CAPITAL_LETTER_A, CGAColor.White, CGAColor.BrightBlue, new Point( 1, 0 ), _canvas );
			_renderer.renderCP437Character( CodePage437Character.COLON, CGAColor.White, CGAColor.BrightBlue, new Point( 2, 0 ), _canvas );
			_renderer.renderCP437Character( CodePage437Character.REVERSE_SOLIDUS, CGAColor.White, CGAColor.BrightBlue, new Point( 3, 0 ), _canvas );
			_renderer.renderCP437Character( ( _counter % 20 == 10 ? CodePage437Character.LOW_LINE : CodePage437Character.NULL ), CGAColor.White, CGAColor.BrightBlue, new Point( 4, 0 ), _canvas );
			_renderer.renderCP437Character( CodePage437Character.NULL, CGAColor.White, CGAColor.Black, new Point( 5, 0 ), _canvas );
			
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