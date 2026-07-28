package maki.modbs.flixel;

#if flixel
import maki.modbs.flixel.events.*;
import flixel.util.typeLimit.NextState;

class FlxModBSGame extends flixel.FlxGame
{
	public var handler:FlxHandler<FlxModule> = new FlxHandler<FlxModule>();

	override public function new(gameWidth = 0, gameHeight = 0, ?initialState:InitialState, updateFramerate = 60, drawFramerate = 60, skipSplash = false,
			startFullscreen = false)
	{
		super(gameWidth, gameHeight, initialState, updateFramerate, drawFramerate, skipSplash, startFullscreen);

		flixel.FlxG.signals.preStateSwitch.add(() -> handler.dispatch(new FlxSignalEvent('preStateSwitch')));
		flixel.FlxG.signals.postStateSwitch.add(() -> handler.dispatch(new FlxSignalEvent('postStateSwitch')));
		flixel.FlxG.signals.preStateCreate.add((state:flixel.FlxState) -> handler.dispatch(new FlxSignalPreStateCreateEvent(state)));
		flixel.FlxG.signals.gameResized.add((width:Int, height:Int) -> handler.dispatch(new FlxSignalResizeGameEvent(width, height)));
		flixel.FlxG.signals.preGameReset.add(() -> handler.dispatch(new FlxSignalEvent('preGameReset')));
		flixel.FlxG.signals.postGameReset.add(() -> handler.dispatch(new FlxSignalEvent('postGameReset')));
		flixel.FlxG.signals.preGameStart.add(() -> handler.dispatch(new FlxSignalEvent('preGameStart')));
		flixel.FlxG.signals.postGameStart.add(() -> handler.dispatch(new FlxSignalEvent('postGameStart')));
		flixel.FlxG.signals.preUpdate.add(() -> handler.dispatch(new FlxSignalEvent('preUpdate')));
		flixel.FlxG.signals.postUpdate.add(() -> handler.dispatch(new FlxSignalEvent('postUpdate')));
		flixel.FlxG.signals.preDraw.add(() -> handler.dispatch(new FlxSignalEvent('preDraw')));
		flixel.FlxG.signals.postDraw.add(() -> handler.dispatch(new FlxSignalEvent('postDraw')));
		flixel.FlxG.signals.focusGained.add(() -> handler.dispatch(new FlxSignalEvent('focusGained')));
		flixel.FlxG.signals.focusLost.add(() -> handler.dispatch(new FlxSignalEvent('focusLost')));
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
