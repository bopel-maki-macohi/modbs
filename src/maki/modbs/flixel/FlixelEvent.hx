package maki.modbs.flixel;

class FlixelEvent extends ModuleEvent
{
	override public function new()
	{
		super(null, false, null);

		#if !flixel
		throw 'FlixelEvent should only be used when HaxeFlixel is installed';
		#end
	}

	override function dispatch(event:ModuleEvent)
	{
		super.dispatch(event);

		#if flixel
		flixel.FlxG.log.info('${internal_id} dispatched');
		#end
	}
}
