var uwu = -15;
var owo = -5;
var owo2 = -30;
var owu = 3;

function onSongStart() timeBarBG.scale.x=timeBar.scale.x=0.01;

function stepHit()
	if (curStep == 1){
		tween('scaletimex',timeBar,{'scale.x':2},3,'quadInOut');
		tween('scaletimex2',timeBarBG,{'scale.x':2},3,'quadInOut');
		tween('movetimex',timeTxt,{x:875},2,'bounceOut');
	}

function beatHit(){
	iconP1.scale.x=iconP2.scale.x=1;

	turnvalue = 15;

	if (curBeat % 2 == 0) if (curBeat > 4){iconP1.scale.x=1.4; iconP2.scale.x=0.8;}
	if (curBeat % 2 == 1) if (curBeat > 4){iconP1.scale.x=0.8; iconP2.scale.x=1.4;}

	if (curBeat % 1 == 0){
		uwu = -uwu;
		owo = -owo;
		owo2 = -owo2;
		timeTxt.angle=-owo2;
		turnvalue = uwu*2;
		iconP1.angle=turnvalue;
		iconP2.angle=-turnvalue;
	}

	tween('iconTween1',iconP1,{angle:0},Conductor.crochet/1000,'quadOut');
	tween('iconTween2',iconP2,{angle:0},Conductor.crochet/1000,'quadOut');
	tween('timeTween1',timeTxt,{angle:0},Conductor.crochet/1000,'quadOut');
}

function onPlayerHit(e){
	if(e.note.isSustainNote)return;
	owu = -owu;
	psychScoreTxt.angle=owu;
	tween('scoreTween1',psychScoreTxt,{angle:0},Conductor.crochet/1000,'quadOut');
}