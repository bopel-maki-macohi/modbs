# 1.1.0 - 07/28/2026

- Added `maki.mobbs.util.ClassUtil`
    - `getClassName`
    - `getClassPath`
    - `getClassFilename`

- `ModuleHandler`:
    - Has a `toString` function now
    - `dispatch` is run on events before running `dispatch` on modules

- Flixel Support:
    - `FlxModBSGame` : Use this instead of `FlxGame` (Recommended as a variable to use the `handler` variable)
        - `handler` variable : `FlxHandler`
        - `FlxG.game` doesn't change to `FlxModBSGame` (This is why it's recommended as a variable)

    - `FlxEvent` : Flixel version of `ModuleEvent`
    - `FlxModule` : Flixel version of `Module`
    - `FlxHandler` : Flixel version of `ModuleHandler` (looks for `FlxModule` instead of `Module`)
    - `FlxSignalEvent` : `FlxEvent` but with a `signal` variable you pass into the `new` function
    - `FlxSignalPreStateCreateEvent` : `FlxSignalEvent` for the `preStateCreate` `FlxG.signals` signal
        - `state` variable
    - `FlxSignalResizeGameEvent` : `FlxSignalEvent` for the `resizeGame` `FlxG.signals` signal
        - `width` and `height` variable

# 1.0.1 - 07/28/2026

- Added README.md

# 1.0.0 - 07/28/2026

Initial Release
