package maki.modbs;

import maki.modbs.util.ClassUtil;

class ModuleHandler<T:Module>
{
	public var modules(default, null):Array<T> = [];

	public function new() {}

	public function clear()
	{
		for (module in modules) remove(module);
	}

	public function add(module:T)
	{
		if (module == null) throw 'Attempted to add null module';

		if (modules.indexOf(module) > -1) return;

		modules.push(module);
	}

	public function remove(module:T)
	{
		if (modules.indexOf(module) < 0) return;

		modules.remove(module);
		module.destroy();
	}

	public function dispatch<E:ModuleEvent>(event:E)
	{
		event.dispatch(null);

		for (module in modules) if (!event.cancelled) module?.dispatch(event);
	}

	public function toString()
	{
		return ClassUtil.getClassFilename(this);
	}
}
