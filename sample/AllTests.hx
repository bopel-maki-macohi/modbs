import haxe.Log;

class AllTests
{
	static function main() @:privateAccess
	{
		var logs:Array<String> = [];
		Log.trace = function(v, ?infos)
		{
			var file = infos.fileName.substr('tests/'.length);
			file = file.substr(0, file.length - '.hx'.length);
			logs.push('$file : $v');
		};

		Test01.main();
		Test02.main();
		Test03.main();

		for (log in logs) Sys.println(log);
	}
}
