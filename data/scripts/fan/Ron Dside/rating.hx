import flixel.text.FlxTextBorderStyle;

var funni = 0;
var dontupdate = false;
var ohno=false;

function postCreate(){
    notes = new FlxText(540,60,200,funni,40);
    notes2 = new FlxText(540,60,200,funni,40);
    for(i in [notes,notes2]){i.screenCenter(FlxAxes.X);
        i.setFormat(Paths.font("vcr.ttf"), 40, FlxColor.WHITE, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        add(i).camera=camHUD; i.antialiasing=false;}
    notes2.alpha=0;
}

function onTimerCompleted(tag, loops, loopsLeft){
    switch(tag){
        case 'oops':ohno=false;
        case 'updatenow':dontupdate=false;
        case 'return':notes.y=notes2.y=60;
        notes.angle=0;
        notes.alpha=1;
        notes2.alpha=0;
        notes.screenCenter(FlxAxes.X);
    }
}

function update(){
    if (!dontupdate) notes.text=funni;
    if (dontupdate) notes.text='Miss...';
    notes2.text=funni;
    if (ohno) notes2.y=FlxG.random.int(50,60);
}

function onPlayerHit(e){
    e.showRating=false;
    if (!e.note.isSustainNote){
        funni = funni + 1;
        tween('congratsry',notes,{'scale.y':1},0.5,'circOut');
        tween('congratsry2',notes2,{'scale.y':1},0.5,'circOut');
        tween('congratsrx',notes,{'scale.x':1},0.5,'circOut');
        tween('congratsrx2',notes2,{'scale.x':1},0.5,'circOut');
        runTimer('bye', 5);
        notes.scale.set(1.75,0.25);
        notes2.scale.set(1.75,0.25);
    }
    switch(e.rating){
        case 'sick':if (!dontupdate) notes.color=0xffffffff;
        notes2.color=0xffffffff;
        case 'good':if (!dontupdate) notes.color=0xff26d701;
        case 'bad':if (!dontupdate) notes.color=0xff530000;
        notes2.color=0xff530000;
        case 'shit':if (!dontupdate) notes.color=0xff530000;
        notes2.color=0xff530000;
    }
}

function onPlayerMiss(e) {
    funni = 0;
    rating = 'Miss...';
    ohno = true;
    dontupdate = true;
    notes.color=0xff530000;
    notes2.color=0xff530000;
    tween('notesfly',notes,{y:800},1.5);
    runTimer('oops', 0.5);
    runTimer('return', 1.6);
    runTimer('updatenow', 1);
    tween('notesx',notes,{x:400},1);
    tween('notestilt',notes,{angle:70},1,'circOut');
    notes2.alpha=1;
    health-=0.025;
}