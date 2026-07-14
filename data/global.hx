import funkin.menus.GitarooPause;

function new() {   
    FlxG.save.data.chromeOffset ??= 0.5;
}
public static var chromeOffset = (FlxG.save.data.chromeOffset/350);

var redirectStates:Map<FlxState, String> = [
    MainMenuState => "V3/DesktopState",
    GitarooPause => "V3/MasterFreeplayState",
    FreeplayState => "PLACEHOLDER/FreeplayState",
];

function preStateSwitch() {
    for (redirectState in redirectStates.keys()) 
        if (Std.isOfType(FlxG.game._requestedState, redirectState)) 
            FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));
}