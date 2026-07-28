package maki.modbs.flixel;

#if flixel
import flixel.util.typeLimit.NextState;

class FlxModBSGame extends flixel.FlxGame
{
	public var handler:FlxHandler<FlxSignalEvent>;

	override public function new(gameWidth = 0, gameHeight = 0, ?initialState:InitialState, updateFramerate = 60, drawFramerate = 60, skipSplash = false,
			startFullscreen = false)
	{
		super(gameWidth, gameHeight, initialState, updateFramerate, drawFramerate, skipSplash, startFullscreen);

		handler = new FlxHandler<FlxSignalEvent>();

		flixel.FlxG.signals.preStateSwitch.add(() -> handler.add(new FlxSignalEvent('preStateSwitch')));
		flixel.FlxG.signals.postStateSwitch.add(() -> handler.add(new FlxSignalEvent('postStateSwitch')));
		flixel.FlxG.signals.preStateCreate.add((state:flixel.FlxState) -> handler.add(new FlxSignalPreStateCreateEvent(state)));
		flixel.FlxG.signals.gameResized.add((width:Int, height:Int) -> handler.add(new FlxSignalResizeGameEvent(width, height)));
		flixel.FlxG.signals.preGameReset.add(() -> handler.add(new FlxSignalEvent('preGameReset')));
		flixel.FlxG.signals.postGameReset.add(() -> handler.add(new FlxSignalEvent('postGameReset')));
		flixel.FlxG.signals.preGameStart.add(() -> handler.add(new FlxSignalEvent('preGameStart')));
		flixel.FlxG.signals.postGameStart.add(() -> handler.add(new FlxSignalEvent('postGameStart')));
		flixel.FlxG.signals.preUpdate.add(() -> handler.add(new FlxSignalEvent('preUpdate')));
		flixel.FlxG.signals.postUpdate.add(() -> handler.add(new FlxSignalEvent('postUpdate')));
		flixel.FlxG.signals.preDraw.add(() -> handler.add(new FlxSignalEvent('preDraw')));
		flixel.FlxG.signals.postDraw.add(() -> handler.add(new FlxSignalEvent('postDraw')));
		flixel.FlxG.signals.focusGained.add(() -> handler.add(new FlxSignalEvent('focusGained')));
		flixel.FlxG.signals.focusLost.add(() -> handler.add(new FlxSignalEvent('focusLost')));
	}
}
#else
class FlxGame
{
	public function new(gameWidth = 0, gameHeight = 0, ?initialState:InitialState, updateFramerate = 60, drawFramerate = 60, skipSplash = false,
			startFullscreen = false)
	{
		throw 'Flixel was totally initalized, I promise, it exists';
	}
}
#end
