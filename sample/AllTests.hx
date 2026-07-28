import haxe.io.Path;
import haxe.Log;

class AllTests
{
	static function main() @:privateAccess
	{
		var logs:Array<String> = [];
		Log.trace = function(v, ?infos)
		{
			var file = new Path(infos.fileName);
			logs.push('${file.file} : $v');
		};

		Test01.main();
		Test02.main();
		Test03.main();

		#if flixel
		FlixelText01.main();
		#end

		for (log in logs) Sys.println(log);
	}
}
