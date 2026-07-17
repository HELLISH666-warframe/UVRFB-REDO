import flixel.text.FlxTextBorderStyle;
import flixel.util.FlxStringUtil;
import flixel.ui.FlxBar;

public var psychScoreTxt; //To simulate the changes in score.

var rankingTexts = [
	['You Suck!', 0.2], //From 0% to 19%
	['Shit', 0.4], //From 20% to 39%
	['Bad', 0.5], //From 40% to 49%
	['Bruh', 0.6], //From 50% to 59%
	['Meh', 0.69], //From 60% to 68%
	['Nice', 0.7], //69%
	['Good', 0.8], //From 70% to 79%
	['Great', 0.9], //From 80% to 89%
	['Sick!', 1], //From 90% to 99%
	['Perfect!!', 1] //The value on this one isn't used actually, since Perfect is always "1"
];
public var timeTxt;
public var timeBarBG;
public var timeBar;
var songLength = FlxG.sound.music.length;

function postCreate() {
	psychScoreTxt = new FlxText(healthBar.x + (healthBar.width * 0.28), 0, FlxG.width, "A", 20);
	psychScoreTxt.setFormat(Paths.font('vcr.ttf'), Std.int(20), 0xFFFFFFFF, 'center', FlxTextBorderStyle.OUTLINE, 0xFF000000);
	psychScoreTxt.borderSize = 1.25;
	psychScoreTxt.camera = camHUD;
	psychScoreTxt.screenCenter();
	psychScoreTxt.y = healthBarBG.y + 30;
	add(psychScoreTxt);
	psychScoreTxt.alpha = 0;
	FlxTween.tween(psychScoreTxt, {alpha: 1}, 0.75, {ease: FlxEase.quartInOut});
	psychScoreTxt.text = 'Score: ' + songScore + ' | Misses: ' + misses + ' | Rating: ?';

	timeTxt = new FlxText(42 + (FlxG.width / 2) - 248, 19, 400,curSong);
	timeTxt.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
	timeTxt.scrollFactor.set();
	timeTxt.alpha = 1;
	timeTxt.borderSize = 2;

    timeBarBG = new FlxSprite().loadGraphic(Paths.image('engine/Psike/timeBar'));
	timeBarBG.x = timeTxt.x;
	timeBarBG.y = timeTxt.y + (timeTxt.height / 4);
	timeBarBG.scrollFactor.set();
	timeBarBG.alpha = 0;
	//timeBarBG.visible = showTime;
	timeBarBG.color = FlxColor.BLACK;
	add(timeBarBG);

    timeBar = new FlxBar(timeBarBG.x + 4, timeBarBG.y + 4, 'LEFT_TO_RIGHT', Std.int(timeBarBG.width - 8), Std.int(timeBarBG.height - 8), null, '', 0, 1);
	timeBar.scrollFactor.set();
	timeBar.createFilledBar(0xFF000000, 0xFFFFFFFF);
	timeBar.numDivisions = 800; //How much lag this causes?? Should i tone it down to idk, 400 or 200?
	timeBar.alpha = 1;
	add(timeBar);
    add(timeTxt);
    for(i in [timeBar,timeTxt,timeBarBG])i.camera=camHUD;

	scoreTxt.visible = false;
	accuracyTxt.visible=false;
	missesTxt.visible=false;

	comboGroup.setPosition(560, 100);
	comboGroup.cameras = [camHUD];
	updateCurStyle('Psych');
}

function update(elapsed:Float) {
    var songCalc:Float = (songLength - Conductor.songPosition);
    if(modSave.TimeBar == "elapsed") songCalc = Conductor.songPosition;
	if(songCalc < 0) songCalc = 0;
    timeTxt.text = FlxStringUtil.formatTime(songCalc/1000, false);
    timeBar.percent = (Conductor.songPosition/songLength)*100;
}

function onSongStart() {
	FlxTween.tween(timeBar, {alpha: 1}, 0.5, {ease: FlxEase.circOut});
	FlxTween.tween(timeTxt, {alpha: 1}, 0.5, {ease: FlxEase.circOut});
}

var accuracyText = '?';
function onPlayerMiss(e) {
	calculateRating();
	psychScoreTxt.text = 'Score: ' + songScore + ' | Misses: ' + misses+ ' | Rating: ' + accuracyText;
}

var scoreTxtTween;
function onPlayerHit(e) {
	calculateRating();
	if(scoreTxtTween != null) scoreTxtTween.cancel();
	psychScoreTxt.scale.x = 1.075;
	psychScoreTxt.scale.y = 1.075;
	scoreTxtTween = FlxTween.tween(psychScoreTxt.scale, {x: 1, y: 1}, 0.2, {
		onComplete: function(twn:FlxTween) {
			scoreTxtTween = null;
		}
	});
	psychScoreTxt.text = 'Score: ' + songScore + ' | Misses: ' + misses + ' | Rating: ' + accuracyText;
}

function onPostNoteHit(e) comboGroup.cameras = [camHUD];

function calculateRating() {
	var ratingName = '';

	if (accuracy >= 1) ratingName = rankingTexts[rankingTexts.length - 1][0];
	else {
		for (i in 0...rankingTexts.length-1)
		{
			if(accuracy < rankingTexts[i][1])
			{
				ratingName = rankingTexts[i][0];
				break;
			}
		}
	}

	var advancedRating = "";
    if (misses > 0) {
        if (misses == 0) {
            var t = "FC";
            for (r in ratings) {
                if (hits[r.name] > 0 && r.fcRating != null) {
                    t = r.fcRating;
                    }
                }
            advancedRating = t;
        }
    	else if (misses < 10) advancedRating = "SDCB"
		else if (misses > 0) advancedRating = "Clear";
    }


	accuracyText = ratingName + ' (' + (Math.floor(accuracy * 10000) / 100) + '%) - ' + advancedRating;
}