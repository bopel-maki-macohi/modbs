import maki.modbs.ModuleHandler;
import maki.modbs.ModuleEvent;
import maki.modbs.Module;

class Test01
{
	static function main()
	{
		var handler = new ModuleHandler<HelloWorldModule, ModuleEvent>();
		handler.add(new HelloWorldModule('01'));
		
		handler.dispatch(new ModuleEvent('01'));
	}
}

class HelloWorldModule extends Module
{
	override public function new(id:String)
	{
		super(id, 'helloworld');
	}

	override function dispatch(event:ModuleEvent)
	{
		super.dispatch(event);

		trace('Hello $event');
	}
}
