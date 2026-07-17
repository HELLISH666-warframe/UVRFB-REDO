var squishMultiplier = 1;
var squishFramesPerSecond = 36;
var defy = 0.7;
var dirs = ['left','down','up','right'];
function onPlayerHit(e){
    cancelTimer('resetNoteP1'+(e.direction+4));
    cancelTimer('resetNoteP2'+(e.direction+4));
    cancelTimer('resetNoteP3'+(e.direction+4));
    cancelTimer('resetNoteP4'+(e.direction+4));
    cancelTimer('resetNoteP5'+(e.direction+4));
    strumLineNotes[e.direction+4].scale.x=defy*1.1;
    strumLineNotes[e.direction+4].scale.y=defy*0.9;
    runTimer('resetNoteP1'+(e.direction+4), squishDuration);
}
function onDadHit(e){
    cancelTimer('resetNoteP1'+e.direction);
    cancelTimer('resetNoteP2'+e.direction);
    cancelTimer('resetNoteP3'+e.direction);
    cancelTimer('resetNoteP4'+e.direction);
    cancelTimer('resetNoteP5'+e.direction);
    strumLineNotes[e.direction].scale.x=defy*1.1;
    strumLineNotes[e.direction].scale.y=defy*0.9;
    runTimer('resetNoteP1'+e.direction, squishDuration);
}

function onTimerCompleted(tag){
    for(i in 0...strumLineNotes.length){
        if (tag == 'resetNoteP1'+i){
        strumLineNotes[i].scale.x=(defy*1.2)*squishMultiplier;
        strumLineNotes[i].scale.y=(defy*0.8)/squishMultiplier;
        runTimer('resetNoteP2'+i,squishDuration);
        }
        if (tag == 'resetNoteP2'+i){
        strumLineNotes[i].scale.x=(defy*1.05)*squishMultiplier;
        strumLineNotes[i].scale.y=(defy*0.95)/squishMultiplier;
        runTimer('resetNoteP3'+i,squishDuration);
        }
        if (tag == 'resetNoteP3'+i){
        strumLineNotes[i].scale.x=defy;
        strumLineNotes[i].scale.y=defy;
        runTimer('resetNoteP4'+i,squishDuration);
        }
        if (tag == 'resetNoteP4'+i){
        strumLineNotes[i].scale.x=(defy*0.95)/squishMultiplier;
        strumLineNotes[i].scale.y=(defy*1.05)*squishMultiplier;
        runTimer('resetNoteP5'+i,squishDuration);
        }
        if (tag == 'resetNoteP5'+i){
        strumLineNotes[i].scale.x=defy;
        strumLineNotes[i].scale.y=defy;
        }
    }
}
function update(){
    squishDuration = squishFramesPerSecond*0.001;
    for (i in 0...dirs.length){
        if (keyJustPressed(dirs[i])){
            if (strumLineNotes[i+3].animation.name=='confirm'){
                cancelTimer('resetNoteP1'+i+3);
                cancelTimer('resetNoteP2'+i+3);
                cancelTimer('resetNoteP3'+i+3);
                cancelTimer('resetNoteP4'+i+3);
                cancelTimer('resetNoteP5'+i+3);
                strumLineNotes[i+3].scale.x=defy*1.1;
                strumLineNotes[i+3].scale.y=defy*0.9;
                runTimer('resetNoteP1'+i+3, squishDuration);
            }
        }
    }
}

function postUpdate() camHUD.scaleX=1.7;