var startSnowBalling = false;

var blizzard = true;
var chanceOfSnow = 10000;
var velocity_bliz = [3000, 5000];

var existingSnow = 0;
var allSnow = [];

var table = [];

var prefix ='fan/Ron Dside V1/bgs/';

function postUpdate(elapsed){
    var currentBeat = (Conductor.songPosition/100)/(Conductor.bpm/170);
    currentBeat2 = (Conductor.songPosition/1000)*(PlayState.SONG.meta.bpm/170);
    if (startSnowBalling && FlxG.random.bool(chanceOfSnow)){
        existingSnow = existingSnow + 1;
        allSnow.push(existingSnow);
        makeAnimatedFlxSprite('snowParticles'+existingSnow, prefix+'bloodsheddside/rainParticles', -camGame.width/2 * 1.2, boyfriend.y - 1250);
        for (i in 1...6) addAnimationByPrefix('snowParticles'+existingSnow, 'snow'+i, 'snow'+i, 24, true);

        setPropLua('snowParticles'+existingSnow+'.x', getPropLua('snowParticles'+existingSnow+'.x') + FlxG.random.int(-100, 10000));
        scaleObject('snowParticles'+existingSnow, 5+FlxG.random.int(0,2),5+FlxG.random.int(0, 2));
        setPropLua('snowParticles'+existingSnow+'.velocity.y', 500);
        setPropLua('snowParticles'+existingSnow+'.scale.x', 10);
        setPropLua('snowParticles'+existingSnow+'.scale.y', 10);
        setPropLua('snowParticles'+existingSnow+'.angle', 0 - 30 * Math.cos((currentBeat2*0.2)*Math.PI));
        setPropLua('snowParticles'+existingSnow+'.antialiasing', false);
        playAnimL('snowParticles'+existingSnow, 'snow'+FlxG.random.int(1,6));
        add(sprMap.get('snowParticles'+existingSnow));

        if (!blizzard){
            if (FlxG.random.bool(50)) setPropLua('snowParticles'+existingSnow+'.velocity.x', 100);
            else setPropLua('snowParticles'+existingSnow+'.velocity.x', -100);
        }else{
            setPropLua('snowParticles'+existingSnow+'.x', getPropLua('snowParticles'+existingSnow+'.x') + FlxG.random.int(-10000,10000));
            setPropLua('snowParticles'+existingSnow+'.velocity.x', velocity_bliz[0] * Math.cos((currentBeat2*0.2)*Math.PI));
            setPropLua('snowParticles'+existingSnow+'.velocity.y', velocity_bliz[1]);
        }
    }

    for (i in 1...allSnow.length){
        if (sprMap.exists('snowParticles'+allSnow[i])){
            if (sprMap.get('snowParticles'+allSnow[i]).y>700){
                removeFlxSprite('snowParticles'+allSnow[i], true);
                allSnow.remove(1);
                table.sort(allSnow);
            }
        }
    }

    if (curBeat == 36) startSnowBalling = true;
}

function onEvent(_) {
	var e=_.event;
    switch(e.name){
        case 'Enable Snow':if(!e.params[0]||!e.params[1]){
            e.params[0] = 'false';
            e.params[1] = 50;
        }
        startSnowBalling=e.params[0];
        chanceOfSnow=e.params[1];
        case 'Snow Blizzard':if(!e.params[0]||!e.params[1]){
            e.params[0] = 'false';
            e.params[1] = '500, 500';
        }
        blizzard=e.params[0];
        if(e.params[1]){
            var splitValue2 = e.params[1].split(', ');
            velocity_bliz = [splitValue2[0], splitValue2[1]];
        }
    }
}