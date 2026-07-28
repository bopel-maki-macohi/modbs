package tests;

class Test03
{
	static function main()
	{
		var handler = new ModuleHandler<NOITModule>();
		handler.add(new NOITModule());

		handler.dispatch(new ClassBasedEvent());
	}
}

class NOITModule extends Module
{
	override public function new()
	{
		super(null, null);
	}

	override function dispatch(event:ModuleEvent)
	{
		super.dispatch(event);

		trace('Hello $event from $this');
	}
}

class ClassBasedEvent extends ModuleEvent
{
	public function new()
	{
		super(null, true, null);
	}
}
