package maki.modbs.flixel;

class FlxSignalPreStateCreateEvent extends FlxSignalEvent
{
	#if flixel
	public var state:flixel.FlxState;

	override public function new(state:flixel.FlxState)
	{
		super('preStateCreate');

		this.state = state;
	}
	#end
}
