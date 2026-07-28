package maki.modbs.flixel.events;

class FlxEvent extends ModuleEvent
{
	override public function new()
	{
		super(null, false, null);

		#if !flixel
		throw 'FlxEvent should only be used when HaxeFlixel is installed';
		#end
	}

	override function dispatch(event:ModuleEvent)
	{
		super.dispatch(event);

		#if flixel
		flixel.FlxG.log.add('${this} dispatched');
		#end
	}
}
