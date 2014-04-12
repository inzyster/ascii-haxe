package ;

import flixel.FlxGame;
import flixel.FlxState;
import flash.Lib;

/**
 * ...
 * @author Wrong Tomato Factory
 */
class GameClass extends FlxGame
{

	public function new(GameSizeX:Int=640, GameSizeY:Int=480, ?InitialState:Class<FlxState>, Zoom:Float=1, UpdateFramerate:Int=60, DrawFramerate:Int=60, SkipSplash:Bool=false, StartFullscreen:Bool=false) 
	{
		var refWidth:Int = Config.charWidth * Config.columns;
		var refHeight:Int = Config.charHeight * Config.rows;
		
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;		
		
		var ratioX:Float = stageWidth / cast(refWidth, Float);
		var ratioY:Float = stageHeight / cast(refHeight, Float);
		var ratio:Float = Math.min(ratioX, ratioY);
		
		var fps:Int = 60;
		
		var fullScreen:Bool = false;
/*		#if desktop
		{
			fullScreen = true;
		}
		#end
	*/
		
		var skipSplash:Bool = true;
		
		super(Math.ceil(stageWidth / ratio), Math.ceil(stageHeight / ratio), TitleState, ratio, fps, fps, skipSplash, fullScreen);		
		
	}
	
}