package tests.flixel;

#if flixel
class FlixelTest01 extends FlxModBSGame
{
	override function new()
	{
		super(0, 0, PlayState);

		handler.add(new MyFlxModule());
	}
}

class PlayState extends flixel.FlxState
{
	override function create()
	{
		trace('Hello world');

		flixel.FlxG.resizeGame(1280, 720);
	}
}

class MyFlxModule extends FlxModule
{
	override function dispatch(e:ModuleEvent)
	{
		super.dispatch(e);

		if (e is FlxSignalPreStateCreateEvent)
		{
			trace(e.toString());
		}
	}
}
#end
