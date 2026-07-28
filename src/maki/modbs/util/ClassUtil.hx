package maki.modbs.util;

import haxe.io.Path;
using StringTools;

class ClassUtil
{
	public static function getClassName(cls:Any):String return Type.getClassName(Type.getClass(cls));

	public static function getClassPath(cls:Any):String return getClassName(cls).replace('.', '/');

	public static function getClassFilename(cls:Any):String return new Path(getClassPath(cls)).file;
}
