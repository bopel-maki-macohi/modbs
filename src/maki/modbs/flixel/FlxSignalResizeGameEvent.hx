package maki.modbs.flixel;

class FlxSignalResizeGameEvent extends FlxSignalEvent
{
	public var width:Int;
	public var height:Int;

	override public function new(width:Int, height:Int)
	{
		super('resizeGame');

		this.width = width;
		this.height = height;
	}
}
