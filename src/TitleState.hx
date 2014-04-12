package ;

import com.wrongtomatofactory.ansi.ANSIRenderer;
import com.wrongtomatofactory.ansi.CodePage437Renderer;
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
	
	private var _counter:UInt;
	
	private var _sprite:FlxSprite;
	
	private var _renderer:CodePage437Renderer;
	
	override public function create()
	{
		super.create();
		
		_counter = 0;
		
		_renderer = new CodePage437Renderer();
		
		var spr:FlxSprite = new FlxSprite(0, 0);
		spr.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);				
		
		this.add(spr);
		
		_sprite = spr;
		
		_canvas = spr.pixels;
		
	}
	
	override public function update()
	{
		super.update();
		
		if (_counter == 0)
		{
		
			_canvas.lock();
			
			for (y in 0...Config.rows)
			{
				for (x in 0...Config.columns)
				{
					var charCode:UInt = Std.random(256);
					var colorIndex:UInt = Std.random(16);
					var colorIndex2:UInt = Std.random(16);
					_renderer.renderCharacter( charCode, CGAColorHelper.fromPaletteIndex(colorIndex), CGAColorHelper.fromPaletteIndex(colorIndex2), _renderer.getPointForCharacterAt( new Point( x, y ) ), _canvas );
				}
			}
			
			_canvas.unlock();
		
		}
		
		#if flash
		{
			_sprite.pixels = _canvas;
			_sprite.update();
		}
		#end
		
		_counter = ++_counter % 60;
				
	}
	
	
}