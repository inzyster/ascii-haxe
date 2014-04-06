package ;

import flash.display.BitmapData;
import flash.geom.Point;
import flash.geom.Rectangle;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class TitleState extends FlxState
{
	
	private var _canvas:BitmapData;
	
	private var _counter:UInt;
	
	private var _sprite:FlxSprite;
	
	override public function create()
	{
		super.create();
		
		_counter = 0;
		
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
			
			for (y in 0...RenderConfig.Rows)
			{
				for (x in 0...RenderConfig.Columns)
				{
					var charCode:UInt = Std.random(256);
					var colorIndex:UInt = Std.random(16);
					var colorIndex2:UInt = Std.random(16);
					CodePage437.RenderCharacter(charCode, CodePage437.Colors[colorIndex2], CodePage437.Colors[colorIndex], new Point(x * RenderConfig.CharacterWidth, y * RenderConfig.CharacterHeight), _canvas);
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
		
		_counter = ++_counter % 1;
				
	}
	
	
}