package tests.flixel;

#if flixel
import flixel.FlxState;

class FlixelText01
{
	static function main()
	{
		var game:FlxModBSGame = new FlxModBSGame(0, 0, PlayState,);
		game.handler.add(new FlxModule());
	}
}

class PlayState extends FlxState
{
	override function create() {}
}
#end
