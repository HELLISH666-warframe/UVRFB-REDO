public var camOther:FlxCamera;

function create() {
	camOther = new FlxCamera();
	camOther.bgColor = 0x00000000;
	FlxG.cameras.add(camOther, false);
	scripts.call('onCreate');
}