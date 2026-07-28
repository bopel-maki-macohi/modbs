package maki.modbs.flixel;

class FlxSignalEvent extends FlxEvent
{
	public var signal:String;

	override public function new(signal:String)
	{
		super();

		this.signal = signal;
	}

	override public function toString():String
	{
		if (signal == null) return internal_id;

		return '$internal_id(signal : $signal)';
	}
}
