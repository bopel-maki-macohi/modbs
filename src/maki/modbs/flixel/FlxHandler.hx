package maki.modbs.flixel;

class FlxHandler<E:FlxModule> extends ModuleHandler<E>
{
	override public function new()
	{
		super();

		#if !flixel
		throw 'FlxHandler should only be used when HaxeFlixel is installed';
		#end
	}
}
