import funkin.menus.GitarooPause;
import haxe.io.Path;

function new() {   
    for (i in Paths.getFolderContent('data/global')) importScript("data/global/"+Path.withoutExtension(i)); //import different global scripts for organization reasons
}

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