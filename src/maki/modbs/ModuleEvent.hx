package maki.modbs;

class ModuleEvent extends Module
{
	public var cancelled(default, null):Bool = false;

	public var cancelable(default, null):Bool = true;

	public function cancel()
	{
		if (cancelable) cancelled = true;
	}

	override public function new(id:String, ?cancelable:Bool = true, ?type:String)
	{
		super(id, type ?? 'moduleevent');

		this.cancelable = cancelable;
	}

	override public function toString():String
	{
		return 'ModuleEvent(internal_id: $internal_id, cancelable: $cancelable, cancelled: $cancelled)';
	}
}
