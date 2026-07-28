package maki.modbs;

class Module
{
	public var type(default, null):String;

	public var id(default, null):String;

	public var internal_id(get, never):String;

	function get_internal_id():String
	{
		return '${type.toLowerCase()}_${id}';
	}

	public function new(id:String, type:String)
	{
		this.id = id;
		this.type = type?.toLowerCase() ?? 'module';
	}

	public function toString():String
	{
		return '$internal_id';
	}

	public function dispatch(event:ModuleEvent) {}

	public function destroy() {}
}
