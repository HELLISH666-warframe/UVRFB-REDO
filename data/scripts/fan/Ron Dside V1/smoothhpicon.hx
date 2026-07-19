var frame = 150;
var rae = 180;

public var simge1;
public var simge2;

function onStartSong(){
	mal = iconP1.animation.name;
	mal2 = iconP2.animation.name;
	simge1 = new FlxSprite(iconP1.x,iconP1.y);
	simge1.loadGraphic(Paths.image('icons/'+mal), true, frame, 0);
	simge1.animation.add('icons/'+mal, [0,1], 0, true);
	simge1.animation.play('icons/'+mal, true);
	simge1.camera=camHUD;
	insert(members.indexOf(iconP1)+1,simge1);
	add(simge1);

	simge2 = new FlxSprite(iconP2.x,iconP2.y);
	simge2.loadGraphic(Paths.image('icons/'+mal2), true, frame, 0);
	simge2.animation.add('icons/'+mal2, [0,1], 0, true);
	simge2.animation.play('icons/'+mal2, true);
	simge2.camera=camHUD;
	insert(members.indexOf(iconP2)+1,simge2);

	add(simge2);

	iconP1.alpha=iconP2.alpha=0;
}
function update(){
	if(simge1==null)return;
	simge1.flipX=true;
	tween('simge1',simge1,{x:iconP1.x},0.1,'linear');
	tween('simge2',simge2,{x:iconP2.x},0.1,'linear');
	if (health > 1.6)simge2.animation.curAnim.curFrame=1;
	if (health < 1.6)simge2.animation.curAnim.curFrame=0;
	if (health < 0.4)simge1.animation.curAnim.curFrame=1;
	if (health > 0.4)simge1.animation.curAnim.curFrame=0;
}
function beatHit(){
	if(simge1==null)return;
	tween('icix',simge1,{'scale.x':1},Conductor.crochet/1100,'quadOut');
	tween('iciy',simge1,{'scale.y':1},Conductor.crochet/1100,'quadOut');
	tween('icix2',simge2,{'scale.x':1},Conductor.crochet/1100,'quadOut');
	tween('iciy2',simge2,{'scale.y':1},Conductor.crochet/1100,'quadOut');

	if (curBeat %2 == 0){simge1.scale.set(1.9,1.5); simge2.scale.set(1.9,1.5);}
	if (curBeat %2 == 1){simge1.scale.set(1.5,1.9); simge2.scale.set(1.5,1.9);}
}