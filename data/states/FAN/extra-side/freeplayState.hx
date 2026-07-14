import flixel.graphics.FlxGraphic;
import funkin.backend.chart.Chart;
import funkin.savedata.FunkinSave;


songs = [];
var songRealList = ['wasted-erect','bloodshed-erect',"bloodshed-two-b",'lost-bloodshed','unwanted'];

for(s in songRealList)songs.push(Chart.loadChartMeta(s, "hard", true));

var scoreBG:FlxSprite;
var scoreText:FlxText;
var diffText:FlxText;
var lerpScore:Int = 0;
var lerpRating:Float = 0;
var intendedScore:Int = 0;
var intendedRating:Float = 0;

static var curSelFPES:Int = 0;
var curDiffFPES:Int = -1;

var featuredChar = new FlxSprite();
var selectedSmth:Bool = false;

var preload = [];

var logos = new FlxTypedGroup();

var logoCam = new FlxCamera();
 
function create() {
	add(featuredChar);

	scoreText = new FlxText(FlxG.width * 0.7, 405, 0, "", 24);
	scoreText.setFormat(Paths.font("vcr.ttf"), 24, FlxColor.WHITE, 'right');

	scoreBG = new FlxSprite(scoreText.x - 6, 400).makeSolid(1, 86, 0xFF000000);
	scoreBG.alpha = 0.6;
	add(scoreBG);

	diffText = new FlxText(scoreText.x, scoreText.y + 48, 0, "", 24);
	diffText.setFormat(Paths.font('vcr.ttf'), 24, FlxColor.WHITE, 'center');
	add(diffText);

	add(scoreText);

	if (curSelFPES >= songs.length) curSelFPES = 0;

	for (i in songs) {
		Assets.exists(Paths.image('menus/FAN/extra-side/FP/port/' + i.port)) ? fuck=i.port : fuck="fucking_useless";
		var graphic = FlxGraphic.fromAssetKey(Paths.image('menus/FAN/extra-side/FP/port/' + fuck));
	    graphic.persist = true;
	    preload.push(graphic);
	}
	logoCam.bgColor = 0;
	FlxG.cameras.add(logoCam, false);

	add(logos);
	for (i in 0...songs.length){
		Assets.exists(Paths.image('menus/FAN/extra-side/FP/logo/' + songs[i].port)) ? pratt=songs[i].port : pratt="fucking_useless";
		var logo:FlxSprite = new FlxSprite(100,30+(120*i)).loadGraphic(Paths.image('menus/FAN/extra-side/FP/logo/'+pratt));
		logo.ID=i;
		add(logo).camera=logoCam;
		logo.scale.set(1.3,1.3);
		//logo.screenCenter(FlxAxes.X);
		logos.add(logo);
	}

	changeSelection(0);
	changeDiff(0);
}

static var curPlayingInst = Paths.inst(songs[curSelFPES].name, songs[curSelFPES].difficulties[curDiffFPES]);

function update(elapsed:Float) {
	if (FlxG.sound.music!=null && FlxG.sound.music.volume < 0.7) FlxG.sound.music.volume += 0.5 * elapsed;

	positionHighscore();

	if(!selectedSmth) {
		if (controls.LEFT_P||controls.RIGHT_P) changeDiff(controls.RIGHT_P ? 1 : -1);
		if (controls.UP_P||controls.DOWN_P){
			changeSelection(controls.DOWN_P ? 1 : -1);
			changeDiff(0);
		}
		if (controls.BACK) {
			persistentUpdate = false;
			selectedSmth = true;
			FlxG.switchState(new MainMenuState());
		}
		if (controls.ACCEPT){
			PlayState.loadSong(songs[curSelFPES].name, songs[curSelFPES].difficulties[curDiffFPES].toLowerCase());

			selectedSmth = true;
			FlxG.switchState(new PlayState());
		}
	}
	logoCam.scroll.y = CoolUtil.fpsLerp(logoCam.scroll.y,-300+ curSelFPES * 130, 0.2);

	lerpScore = Math.floor(FlxMath.lerp(lerpScore, intendedScore, FlxMath.bound(elapsed * 24, 0, 1)));
	lerpRating = FlxMath.lerp(lerpRating, intendedRating, FlxMath.bound(elapsed * 12, 0, 1));

	if (Math.abs(lerpScore - intendedScore) <= 10) lerpScore = intendedScore;
	if (Math.abs(lerpRating - intendedRating) <= 0.01) lerpRating = intendedRating;

	var ratingSplit:Array<String> = Std.string(floorDecimal(lerpRating * 100, 2)).split('.');
	if (ratingSplit.length < 2) ratingSplit.push('');

	while (ratingSplit[1].length < 2) ratingSplit[1] += '0';

	scoreText.text = 'PERSONAL BEST: ' + lerpScore + ' (' +ratingSplit.join('.')+ '%)';
}

function changeSelection(change:Int = 0, playSound:Bool = true){
	curSelFPES = FlxMath.wrap(curSelFPES + change, 0, songs.length-1);

	for(i in logos.members) i.ID==curSelFPES ? i.alpha=1 : i.alpha=0.5;

	featuredChar.loadGraphic(preload[curSelFPES]);
	featuredChar.antialiasing = Options.antialiasing;
	featuredChar.setGraphicSize(Std.int(featuredChar.width * 0.8));
	featuredChar.screenCenter();
	featuredChar.x+=370;
	featuredChar.alpha = 0.0001;

	FlxTween.globalManager.completeTweensOf(featuredChar);

	FlxTween.tween(featuredChar, {alpha: 1}, 0.25, {ease: FlxEase.sineInOut});
}

function changeDiff(change:Int = 0) {
	curDiffFPES = FlxMath.wrap(curDiffFPES + change, 0, songs[curSelFPES].difficulties.length-1);

	diffText.text = '< ' + songs[curSelFPES].difficulties[curDiffFPES].toUpperCase()+ ' >';

	intendedScore = FunkinSave.getSongHighscore(songs[curSelFPES].name, songs[curSelFPES].difficulties[curDiffFPES]).score;
	intendedRating = FunkinSave.getSongHighscore(songs[curSelFPES].name, songs[curSelFPES].difficulties[curDiffFPES]).accuracy;
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