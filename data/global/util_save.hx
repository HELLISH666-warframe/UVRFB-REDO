public static var modSave;

//MISC_VARS.
public static var chromeOffset;

function new() {   
    FlxG.save.data.UNTITLED_VS_RON_FANBUILD_SAVE??={};
    modSave=FlxG.save.data.UNTITLED_VS_RON_FANBUILD_SAVE;

    modSave.chromeOffset ??= 0.5;

    saveMyShit();
}

function preStateSwitch() {
    saveMyShit();
}

public static function saveMyShit() {
    chromeOffset=(modSave.chromeOffset/350);
    FlxG.save.flush();
}