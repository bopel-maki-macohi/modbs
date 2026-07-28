package maki.modbs.flixel;

class FlxModule extends Module
{
	override public function new()
	{
		super(null, null);

		#if !flixel
		throw 'FlxModule should only be used when HaxeFlixel is installed';
		#end
	}

	override function dispatch(event:ModuleEvent)
	{
		super.dispatch(event);

		#if flixel
		flixel.FlxG.log.add('${event} received');
		#end
	}
}
