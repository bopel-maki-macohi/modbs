package maki.modbs;

import maki.modbs.util.ClassUtil;
using StringTools;

class Module
{
	public var type(default, null):String;

	public var id(default, null):String;

	public var internal_id(get, never):String;

	function get_internal_id():String
	{
		if (type == null || type.trim().length < 1)
		{
			if (id == null || id.trim().length < 1) return ClassUtil.getClassFilename(this);

			return id;
		}

		if (id == null || id.trim().length < 1) return '${type.toLowerCase()}';

		return '${type.toLowerCase()}_${id}';
	}

	public function new(id:String, type:String)
	{
		this.id = id;
		this.type = type;
	}

	public function toString():String
	{
		return '$internal_id';
	}

	public function dispatch(event:ModuleEvent) {}

	public function destroy() {}
}
