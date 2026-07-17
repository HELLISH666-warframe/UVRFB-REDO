public static var modSave;

//MISC_VARS.
public static var chromeOffset;

function new() {   
    FlxG.save.data.UNTITLED_VS_RON_FANBUILD_SAVE??={};
    modSave=FlxG.save.data.UNTITLED_VS_RON_FANBUILD_SAVE;

    modSave.chromeOffset ??= 0.5;
    modSave.gameplaySettings??=[
		'scrollspeed' => 1.0,
		'scrolltype' => 'multiplicative', 
		'songspeed' => 1.0,
		'healthgain' => 1.0,
		'healthloss' => 1.0,
		'instakill' => false,
		'practice' => false,
		'botplay' => false,
		'opponentplay' => false
	];
	
	//Mod_specfic_shit.
	modSave.modVersion??='V3';

    saveMyShit();
}

function preStateSwitch() {
    saveMyShit();
}

public static function saveMyShit() {
    chromeOffset=(modSave.chromeOffset/350);
    FlxG.save.flush();
}