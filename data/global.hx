import funkin.menus.GitarooPause;
import haxe.io.Path;

function new() {   
    for (i in Paths.getFolderContent('data/global')) importScript("data/global/"+Path.withoutExtension(i)); //import different global scripts for organization reasons
}

function preStateSwitch() {
    modSave.modVersion='DEV';
    switch(modSave.modVersion){
        case 'V3':redirectStates = [WarningState=>"V3/NoticeScreen",TitleState => "V3/TitleState",
        MainMenuState => "V3/DesktopState",StoryMenuState => "V3/DesktopState",FreeplayState => "V3/FreeplayState",
        CreditsMain => "V3/CreditsRon",GitarooPause => "V3/MasterFreeplayState"];
        case 'DEV':redirectStates = [
        TitleState => "PLACEHOLDER/MasterFreeplayState",MainMenuState => "PLACEHOLDER/MasterFreeplayState",
        StoryMenuState => "PLACEHOLDER/MasterFreeplayState",GitarooPause => "PLACEHOLDER/MasterFreeplayState",
        FreeplayState => "PLACEHOLDER/FreeplayState"];
    }
    for (redirectState in redirectStates.keys()) 
        if (Std.isOfType(FlxG.game._requestedState, redirectState)) 
            FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));
}