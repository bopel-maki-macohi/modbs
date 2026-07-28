package tests;

class Test02
{
	static function main()
	{
		var handler = new ModuleHandler<SpecificEventModule>();
		handler.add(new SpecificEventModule('02'));

		handler.dispatch(new ModuleEvent('02'));
		handler.dispatch(new CoolEvent('02'));
		handler.dispatch(new NotCoolEvent('02'));
	}
}

class SpecificEventModule extends Module
{
	override public function new(id:String)
	{
		super(id, 'specificevent');
	}

	override function dispatch(event:ModuleEvent)
	{
		super.dispatch(event);

		trace('Hello $event');

		switch (event.type)
		{
			case 'cool': trace(' * you are cool B)');
		}

		if (event is NotCoolEvent) trace(' * You are not cool >:(');

		if (Std.isOfType(event, ModuleEvent)) trace(' * You are pretty basic ngl');
		if (Std.is(event, CoolEvent)) trace(' * Everyone loves ya');
	}
}

class CoolEvent extends ModuleEvent
{
	override public function new(id:String)
	{
		super(id, false, 'cool');
	}
}

class NotCoolEvent extends ModuleEvent
{
	override public function new(id:String)
	{
		super(id, true, 'notcool');
	}
}
