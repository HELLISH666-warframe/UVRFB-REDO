
import flixel.addons.display.FlxBackdrop;
import funkin.backend.utils.DiscordUtil;
import funkin.savedata.FunkinSave;
import funkin.backend.chart.Chart;
import flixel.graphics.FlxGraphic;
import flixel.effects.particles.FlxParticle;
import flixel.effects.particles.FlxTypedEmitter;
import funkin.backend.system.framerate.Framerate;
import V3.Alphabetthing;

var songs = [];
songRealList = [
	['techne']
];
modelist = ["MAIN","CLASSIC","EXTRAS","B-SIDES","FANMADE"];
rsongsFound = songRealList[FlxG.save.data.freeplaything];

for(s in rsongsFound)
	songs.push(Chart.loadChartMeta(s, "hard", true));

static var curSelected_FP:Int = 0;

var curDifficulty:Int = 1;

var scoreBG:FlxSprite;
var scoreText:FlxText;
var diffText:FlxText;
var lerpScore:Int = 0;
var lerpRating:Float = 0;
var intendedScore:Int = 0;
var intendedRating:Float = 0;

var grpSongs:FlxTypedGroup<Alphabet>;
var curPlaying:Bool = false;

var iconArray:Array<HealthIcon> = [];

var intendedColor:Int;
var bg = new FlxSprite(0, 0);
var iconArray:Array<HealthIcon> = [];
var camText = new FlxCamera();
camText.bgColor = null;
var portrait = new FlxSprite();
var portraitOverlay = new FlxSprite();
var preload = [];
static var curSelectReal = [0,0,0,0,0];
modelist = ["MAIN","CLASSIC","EXTRAS","B-SIDES","FANMADE"];
var modeText:FlxText = new FlxText(10, 10, 0, modelist[FlxG.save.data.freeplaything], 48);
var fanmade_text = new FlxText(540, 1, 0, '', 48);
var pressshift:FlxText = new FlxText(1, 100, 0, "Press shift to view the page of this fan-mod!", 48);

function create() {
	CoolUtil.playMenuSong(true);
	persistentUpdate = true;
	DiscordUtil.changePresenceSince("In the Menus", null);

	bg.frames = Paths.getSparrowAtlas('menus/V3/FP/mainbgAnimate');
	if(FlxG.save.data.freeplaything == 1){
		bg.frames = Paths.getSparrowAtlas('menus/V3/FP/classicbgAnimate');
		FlxG.camera.addShader(vhs);
	}
	bg.animation.addByPrefix('animate', 'animate', 24, true);
	bg.animation.play('animate');
	bg.scale.set(2,2);
	bg.screenCenter();
	add(bg);
	modeText.setFormat(Paths.font("V3/w95.otf"), 48, FlxColor.WHITE);
	insert(2,modeText);

	portrait.updateHitbox();
	insert(2,portrait);

	add(bar = CoolUtil.loadAnimatedGraphic(new FlxSprite(490,-20), Paths.image('menus/V3/FP/bar')));
	insert(4,portraitOverlay);

	for (i in songs) {
		if (Assets.exists(Paths.image('menus/V3/FP/ports/' + i.port)))
			kms='menus/V3/FP/ports/' + i.port;
		else
			kms='menus/V3/FP/ports/fucking_useless';
		var graphic = FlxGraphic.fromAssetKey(Paths.image(kms));
		graphic.persist = true;
		preload.push(graphic);
	}

	fanmade_text.setFormat(Paths.font("V3/w95.otf"), 48, FlxColor.RED);
	fanmade_text.angle=-3;
	insert(9,fanmade_text);

	pressshift.setFormat(Paths.font("V3/w95.otf"), 32, FlxColor.WHITE);
	//pressshift.camera=camText;
	if(FlxG.save.data.freeplaything==4){insert(2,pressshift);
	portrait.x=900;
	}

	if (FlxG.save.data.glitch)FlxG.camera.addShader(glitch);
	if (FlxG.save.data.crt)FlxG.camera.addShader(crt = new CustomShader("V3/fake CRT"));
	if (FlxG.save.data.chrom) FlxG.camera.addShader(chrom);
	camText.addShader(fish);
	fish.MAX_POWER = 0.2;

	var coolemitter:FlxTypedEmitter = new FlxTypedEmitter();
	coolemitter.velocity.set(0, -5, 0, -10);
	coolemitter.y = FlxG.height;

	var coolzemitter:FlxTypedEmitter = new FlxTypedEmitter();
	coolzemitter.velocity.set(0, 5, 0, 10);

	for (i in 0...150)
	{
		var p = new FlxParticle();
		var p2 = new FlxParticle();
		p.makeGraphic(6,6,FlxColor.BLACK);
		p2.makeGraphic(12,12,FlxColor.BLACK);

		coolemitter.add(p);
		coolemitter.add(p2);
		coolzemitter.add(p);
		coolzemitter.add(p2);
	}
	for(i in [coolzemitter,coolemitter]){
		i.width = FlxG.width*1.5;
		i.angularVelocity.set(-10, 10);
		i.lifespan.set(5);
		add(i);
		i.start(false, 0.05);
	}

	grpSongs = new FlxTypedGroup();
	add(grpSongs);
	for (i in 0...songs.length)
	{
		var songText = new Alphabetthing(0, (70 * i) + 30, songs[i].displayName.toUpperCase(),true);
		songText.isMenuItem = true;
		songText.targetY = i;
		songText.ID = i;
		songText.camera = camText;
		grpSongs.add(songText);
		var icon = new HealthIcon(songs[i].icon);
		icon.sprTracker = songText;

		iconArray.push(icon);
		add(icon);
	}

	scoreText = new FlxText(FlxG.width * 0.7, 5, 0, "", 32);
	scoreText.setFormat(Paths.font("V3/w95.otf"), 32, FlxColor.WHITE, 'right');

	scoreBG = new FlxSprite(scoreText.x - 6, 0).makeGraphic(1, 66, 0xFF000000);
	scoreBG.alpha = 0.6;
	add(scoreBG);

	diffText = new FlxText(scoreText.x, scoreText.y + 36, 0, "", 24);
	diffText.font = scoreText.font;
	add(diffText);

	add(scoreText);

	changeSelection(0);

	add(textBG = new FlxSprite(0, FlxG.height - 26).makeSolid(FlxG.width, 26, 0xFF000000)).alpha = 0.6;

	var text:FlxText = new FlxText(textBG.x, textBG.y + 4, FlxG.width, 'Press SPACE to listen to the Song / Press CTRL to open the Gameplay Changers Menu.');
	text.setFormat(Paths.font("vcr.ttf"), 16, FlxColor.WHITE, 'right');
	text.scrollFactor.set();
	add(text);
}
function postCreate() {
	FlxG.cameras.add(camText, false);
}
var instPlaying:Int = -1;

var holdTime:Float = 0;
var time:Float = 0;
var chrom = new CustomShader("V3/chromatic aberration");
var fish = new CustomShader("V3/fisheye");
var glitch = new CustomShader("V3/glitchsmh");
var grey = new CustomShader("V3/grayscale");
var vhs = new CustomShader("V3/vhs");
function update(elapsed:Float) {
	if (FlxG.sound.music.volume < 0.7) FlxG.sound.music.volume += 0.5 * FlxG.elapsed;

	lerpScore = Math.floor(FlxMath.lerp(lerpScore, intendedScore, FlxMath.bound(elapsed * 24, 0, 1)));
	lerpRating = FlxMath.lerp(lerpRating, intendedRating, FlxMath.bound(elapsed * 12, 0, 1));

	if (Math.abs(lerpScore - intendedScore) <= 10) lerpScore = intendedScore;
	if (Math.abs(lerpRating - intendedRating) <= 0.01) lerpRating = intendedRating;

	var ratingSplit:Array<String> = Std.string(floorDecimal(lerpRating * 100, 2)).split('.');
	if (ratingSplit.length < 2) ratingSplit.push('');

	while (ratingSplit[1].length < 2) ratingSplit[1] += '0';

	scoreText.text = 'PERSONAL BEST: ' + lerpScore + ' (' +ratingSplit.join('.')+ '%)';
	positionHighscore();
	var shiftMult:Int = 1;
	if (FlxG.keys.pressed.SHIFT) shiftMult = 3;
	if (controls.UP_P||controls.DOWN_P) {
		changeSelection(controls.UP_P?-shiftMult:shiftMult);
		holdTime = 0;
	}
	if (controls.DOWN_P || controls.UP_P) {
		var checkLastHold:Int = Math.floor((holdTime - 0.5) * 10);
		holdTime += elapsed;
		var checkNewHold:Int = Math.floor((holdTime - 0.5) * 10);

		if (holdTime > 0.5 && checkNewHold - checkLastHold > 0) 
			changeSelection((checkNewHold - checkLastHold) * (controls.UP_P ? -shiftMult : shiftMult));
	}
	if (FlxG.mouse.wheel != 0) {
		FlxG.sound.play(Paths.sound('scrollMenu'), 0.2);
		changeSelection(-shiftMult * FlxG.mouse.wheel, false);
	}
	if (controls.LEFT_P||controls.RIGHT_P) changeDiff(controls.LEFT_P?-1:1);
	else if (FlxG.keys.justPressed.SPACE) {
		if (instPlaying != curSelected_FP) {
			#if PRELOAD_ALL
			FlxG.sound.music.volume = 0;

			FlxG.sound.playMusic(Paths.inst(songs[curSelected_FP].name, songs[curSelected_FP].difficulties[curDifficulty]), 0.7);
			instPlaying = curSelected_FP;
			#end
		}
	}
	else if (controls.ACCEPT) {
		var songLowercase:String = songs[curSelected_FP].name;
		persistentUpdate = false;
		PlayState.loadSong(songs[curSelected_FP].name, songs[curSelected_FP].difficulties[curDifficulty].toLowerCase());
		FlxG.switchState(new PlayState());
	
		FlxG.sound.music.volume = 0;
	}
	if (FlxG.keys.justPressed.CONTROL){
		persistentUpdate = false;
		openSubState(new ModSubState('shared/GameplayChangersSubstate'));
	}
	if (FlxG.keys.justPressed.J){
		FlxG.switchState(new ModState('FAN/extra-side/freeplayState'));
	}
	time += elapsed;
	chrom.data.rOffset.value = [chromeOffset*Math.sin(time)];
	chrom.data.bOffset.value = [-chromeOffset*Math.sin(time)];
	glitch.iTime = time;
	vhs.iTime = time;
	for (i in 0...songs.length)
		grpSongs.members[i].y += (Math.sin(i+time)/2);
	for (item in grpSongs.members)
		item.forceX = FlxMath.lerp(item.x, 125 + (65 * (item.ID - curSelected_FP)), lerpFix(0.1));
	portraitOverlay.y = portrait.y;
	portraitOverlay.angle = portrait.angle;
	if(controls.BACK)FlxG.switchState(new ModState('V3/MasterFreeplayState'));
	if(FlxG.keys.pressed.SHIFT && songs[curSelected_FP].modlink!=null) {
		CoolUtil.openURL(songs[curSelected_FP].modlink);
	}
	for (i in 0...grpSongs.length)
		iconArray[i].setPosition(grpSongs.members[i].x+grpSongs.members[i].width+10,grpSongs.members[i].y-30);
}
function changeDiff(change:Int = 0) {
	curDifficulty = FlxMath.wrap(curDifficulty + change, 0, songs[curSelected_FP].difficulties.length-1);

	intendedScore = FunkinSave.getSongHighscore(songs[curSelected_FP].name, songs[curSelected_FP].difficulties[curDifficulty]).score;
	intendedRating = FunkinSave.getSongHighscore(songs[curSelected_FP].name, songs[curSelected_FP].difficulties[curDifficulty]).accuracy;

	diffText.text = '< ' + songs[curSelected_FP].difficulties[curDifficulty].toUpperCase() + ' >';
	diffText.color = switch(diffText.text) {
		case '< COOL >':0xF00020;
		case '< STAINED >':0x347FF1;
		default: 0xFFFFFFFF;		
	}
	fanmade_text.color = switch(diffText.text) {
		case '< STAINED >':0x347FF1;
		default: 0xffee00;		
	}
	positionHighscore();
}

function shadering(REAL:Int,?string:String=""){
	var cursong = songs[REAL];
    switch(cursong.displayName) {
		case "gron": if(FlxG.save.data.grey)FlxG.camera.addShader(grey);camText.addShader(grey);
		case "trojan-virus"|"Bleeding":glitch.on = 1.;
		default:FlxG.camera.removeShader(grey);camText.removeShader(grey);
			glitch.on = 0;
    }
	if(string=="hand"){
		if(Assets.exists(Paths.image('menus/FP/ports/'+cursong.displayName+'-over')))
		portraitOverlay.loadGraphic(Paths.image('menus/FP/ports/'+cursong.displayName+'-over'));
		portraitOverlay.screenCenter();
		Assets.exists(Paths.image('menus/FP/ports/'+cursong.displayName+'-over')) ? portraitOverlay.visible = true : 
		portraitOverlay.visible = false;
		return;
	}

	if(cursong.normalport){
	FlxTween.tween(fanmade_text, {angle:-1,x:540,y:0}, 0.2, {ease: FlxEase.quintIn});
	FlxTween.tween(bar, {angle:0,x:490}, 0.2, {ease: FlxEase.quintIn});
	FlxTween.tween(portrait, {x:0,angle:0}, 0.4, {ease: FlxEase.quintIn});
	}
	else if(!cursong.normalport){
	FlxTween.tween(fanmade_text, {angle:4,x:580,y:650}, 0.2, {ease: FlxEase.quintIn});
	FlxTween.tween(bar, {angle:30,x:400}, 0.2, {ease: FlxEase.quintIn});
	FlxTween.tween(portrait, {angle:5,x:600}, 0.2, {ease: FlxEase.quintIn});
	}
}

function changeSelection(change:Int = 0, playSound:Bool = true) {
	playSound??=true;
	if (playSound) FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
	curSelected_FP = FlxMath.wrap(curSelected_FP + change, 0, songs.length-1);
	curSelectReal[FlxG.save.data.freeplaything]=curSelected_FP;
	fanmade_text.text=songs[curSelected_FP].version;

	var bullShit:Int = 0;

	for (i in grpSongs){
		i.targetY = bullShit - curSelected_FP;
		bullShit++;
		i.alpha = 0.6;
		if (i.targetY == 0) i.alpha = 1;
	}

	for (i in 0...iconArray.length) iconArray[i].alpha = 0.6;
	iconArray[curSelected_FP].alpha = 1;
	shadering(curSelected_FP);

	if(!songs[curSelected_FP].normalport){
	FlxTween.tween(portrait, {y: portrait.y + 300}, 0.2, {ease: FlxEase.quintIn, onComplete: function(twn:FlxTween) {
		portrait.loadGraphic(preload[curSelected_FP]);
		shadering(curSelected_FP,"hand");
		portrait.screenCenter(FlxAxes.Y);
		var mfwY2 = portrait.y;
		portrait.y -= 20;
		FlxTween.tween(portrait, {y: mfwY2}, 0.4, {ease: FlxEase.elasticOut});
	}});
	}
	if(songs[curSelected_FP].normalport){
	FlxTween.tween(portrait, {y: portrait.y + 45, angle: 5}, 0.2, {ease: FlxEase.quintIn, onComplete: function(twn:FlxTween) {
		portrait.loadGraphic(preload[curSelected_FP]);
		shadering(curSelected_FP,"hand");
		portrait.screenCenter();
		var mfwY = portrait.y;
		portrait.y -= 20;
		portrait.angle = -5;
		FlxTween.tween(portrait, {y: mfwY, angle: 0}, 0.4, {ease: FlxEase.elasticOut});
	}});
}

	var newColor:Int = songs[curSelected_FP].color;
	if (newColor != intendedColor) {
		intendedColor = newColor;
		FlxTween.cancelTweensOf(bg,['color']);
		FlxTween.color(bg, 1, bg.color, intendedColor);
	}
	changeDiff(0);
}

function positionHighscore() {
	scoreText.x = FlxG.width - scoreText.width - 6;

	scoreBG.scale.x = FlxG.width - scoreText.x + 6;
	scoreBG.x = FlxG.width - (scoreBG.scale.x / 2);
	diffText.x = Std.int(scoreBG.x + (scoreBG.width / 2));
	diffText.x -= diffText.width / 2;
}

public static function floorDecimal(value:Float, decimals:Int):Float{
	if (decimals < 1) return Math.floor(value);
	var tempMult:Float = 1;
	for (i in 0...decimals) tempMult *= 10;
	var newValue:Float = Math.floor(value * tempMult);
	return newValue / tempMult;
}

public static function lerpFix(value:Float) {return value / (60 / 60);}