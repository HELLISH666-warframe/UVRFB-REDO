public var tweenMap:Map<String, FlxTween>=[];
public var timerMap:Map<String, FlxTimer>=[];
public var sprMap:Map<String, FlxSprite>=[];
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
	var f=name;
    if (timerMap.exists(name)) timerMap.get(name).cancel();
    timerMap.set(name,new FlxTimer().start(time,function(tmr:FlxTimer) {scripts.call('onTimerCompleted',[f,tmr.loops,tmr.loopsLeft]);},loops));
}

public function cancelTimer(tag){
    if (timerMap.exists(tag)) {
        timerMap.get(tag).cancel();
        timerMap.get(tag).destroy();
		timerMap.remove(tag);
    }
}

public function keyJustPressed(name){
    key='nothing';
    switch(name) {
	case 'left': key = controls.NOTE_LEFT_P;
	case 'down': key = controls.NOTE_DOWN_P;
	case 'up': key = controls.NOTE_UP_P;
	case 'right': key = controls.NOTE_RIGHT_P;
	}
    return key;
}

public function scaleObject(object,x,y){
    sprMap.exists(object)?obj=sprMap.get(object):obj=object;
    obj.scale.set(x,y);
	obj.updateHitbox();
}

public function makeAnimatedFlxSprite(tag,image,x,y){
    resetSpriteTag(tag);

    spr = new FlxSprite(x,y);
    spr.antialiasing = modSave.globalAntialiasing;
    spr.frames = Paths.getSparrowAtlas(image);
    sprMap.set(tag, spr);
}

public function addAnimationByPrefix(obj,name,prefix,framerate,loop){
    framerate??=24;
    loop??=true;
    if(!sprMap.exists(obj))return;
    cock = sprMap.get(obj);
    cock.animation.addByPrefix(name, prefix, framerate, loop);
    if(cock.animation.curAnim == null) cock.animation.play(name, true);
}

public function setPropLua(thg,val){
    spt = thg.split('.');
    if(!sprMap.exists(spt[0]))return;
    if(spt.length>2){
        Reflect.setField(Reflect.getProperty(sprMap.get(spt[0]),spt[1]),spt[2],val);
    }else{
        Reflect.setField(sprMap.get(spt[0]),spt[1],val);
    }
}

public function getPropLua(thg){
    spt = thg.split('.');
    if(!sprMap.exists(spt[0]))return;
    if(spt.length>2){
        return Reflect.getProperty(Reflect.getProperty(sprMap.get(spt[0]),spt[1]),spt[2]);
    }else{
        return Reflect.getProperty(sprMap.get(spt[0]),spt[1]);
    }
}

public function resetSpriteTag(tag:String) {
	if (!sprMap.exists(tag)) return;
	var pee = sprMap.get(tag);
	pee.kill();
	if(pee.exists) remove(pee, true);

	pee.destroy();
	sprMap.remove(tag);
}

public function setGraphicSizeL(object,x,y,?updateHitbox) {
    updateHitbox??=true;
    obj=object;

    obj.setGraphicSize(x, y);
    if (updateHitbox) obj.updateHitbox();
}

public function playAnimL(obj,name,?forced,?reverse,?startFrame) {
    if (!sprMap.exists(obj)) return;
    forced??=false;
    reverse??=false;
    startFrame??=0;

    sprMap.get(obj).animation.play(name,forced, reverse, startFrame);
}

public function removeFlxSprite(tag,destroy) {
    destroy??=true;
    if (!sprMap.exists(tag)) return;

    var pee = sprMap.get(tag);
    if (destroy) pee.kill();
    remove(pee, true);
    if (destroy) {
		pee.destroy();
		sprMap.remove(tag);
	}
}