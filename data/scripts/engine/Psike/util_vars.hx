public var tweenMap:Map<String, FlxTween>=[];
public var timerMap:Map<String, FlxTimer>=[];
public var strumLineNotes = [];

function postCreate() {
    for (i in cpuStrums.members){strumLineNotes.push(i);}
    for (i in playerStrums.members) {strumLineNotes.push(i);}
    for(i in 0...2)strumLines.members[i].forEach((a) -> {a.noteAngle=0;});

    for(i in 0...strumLines.length){
		if(!strumLines.members[i].visible)return;
		for(l in 0...strumLines.members[i].members.length)
	strumLines.members[i].members[l].extraCopyFields=['alpha'];
	}
}

function onPostNoteCreation(e) {
	e.note.forceIsOnScreen = true;
}

public function tween(name,object,fuck,speed,?easE,?colored){
    if(!object.exists)return;
    if (tweenMap.exists(name)) tweenMap.get(name).cancel();
    if(colored==null)
    tweenMap.set(name,FlxTween.tween(object, fuck, speed,if(easE!=null){ease:Reflect.field(FlxEase,easE)}));
    else{
    tweenMap.set(name,FlxTween.color(object,speed,(object.color & 0xffffff) + 0xff000000,fuck[1],if(easE!=null){ease:Reflect.field(FlxEase,easE)}));//Both_colors_NEEDS_the_alpha_channel_to_be_stated.
    }
}

public function runTimer(name:String,time,?loops){
    loops??=1;
	var retard=name;
    if (timerMap.exists(name)) timerMap.get(name).cancel();
    timerMap.set(name,new FlxTimer().start(time,function(tmr:FlxTimer) {scripts.call('onTimerCompleted',[retard,tmr.loops,tmr.loopsLeft]);},loops));
}