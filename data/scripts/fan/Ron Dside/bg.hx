var prefix='Ron Dside/';

var bg;

function create(){
    bg = new FlxSprite(300,-200).loadGraphic(Paths.image(prefix+'dead'));
    bg.scrollFactor.set(1,1);
    insert(bg, 5);
    bg.scale.set(0.1775,2);
    bg.camera=camHUD;
    bg.alpha=0.5;
    add(bg);
}

function update(){xPos = strumLineNotes[4].x;

    bg.x=xPos-5;
}