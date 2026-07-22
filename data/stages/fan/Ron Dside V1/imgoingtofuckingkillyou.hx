var prefix='fan/Ron Dside V1/';

public var sadmoon;
public var backcity;
public var kamehameha;
public var penty;
public var frontcity;
public var building1;
public var building2;
public var building3;
public var tree3;
public var tree4;
public var backhill;
public var tree1;
public var tree2;
public var fronthill;
public var hind;
public var foreskin;
public var foreskinclean;
public var stone1;
public var stone2;
public var island;
public var island2;
public var noskin;
public var stone3;
public var canvas;
public var canvasclean;
public var pentycanvas;
public var deadly1;
public var deadly2;
public var googoo;
public var grade;
public var alive;
public var alivefake;
public var deadfake;
public var dead;

function postCreate() {
	sadmoon = new FlxSprite(0,-1000).loadGraphic(Paths.image(prefix+'bgs/giggad/sadmoon'));
	sadmoon.scrollFactor.set(0,0.02);
	insert(0,sadmoon);
	scaleObject(sadmoon,2.5,2.5);
	sadmoon.screenCenter(FlxAxes.X);

	backcity = new FlxSprite(0,-1300).loadGraphic(Paths.image(prefix+'bgs/giggad/backcity'));
	backcity.scrollFactor.set(0.15,0.15);
	insert(2,backcity);
	scaleObject(backcity,2.5,2.5);
	backcity.screenCenter(FlxAxes.X);

	kamehameha = new FlxSprite(0,-3500).loadGraphic(Paths.image(prefix+'bgs/giggad/kamehameha'));
	kamehameha.scrollFactor.set(0.175,0.175);
	insert(4,kamehameha);
	scaleObject(kamehameha,2.5,2.5);
	kamehameha.screenCenter(FlxAxes.X);
	kamehameha.alpha=0;

    penty = new FlxSprite(0,-7000).loadGraphic(Paths.image(prefix+'bgs/giggad/penty'));
	penty.scrollFactor.set(0.2,0.2);
	insert(5,penty);
	scaleObject(penty,2.5,2.5);
	penty.screenCenter(FlxAxes.X);

	frontcity = new FlxSprite(0,-1100).loadGraphic(Paths.image(prefix+'bgs/giggad/frontcity'));
	frontcity.scrollFactor.set(0.25,0.25);
	insert(6,frontcity);
	scaleObject(frontcity,2.5,2.5);
	frontcity.screenCenter(FlxAxes.X);

	building1 = new FlxSprite(-400,325).loadGraphic(Paths.image(prefix+'bgs/giggad/building1'));
	building1.scrollFactor.set(0.4,0.4);
	insert(7,building1);
	scaleObject(building1,4,4);

	building2 = new FlxSprite(900,325).loadGraphic(Paths.image(prefix+'bgs/giggad/building2'));
	building2.scrollFactor.set(0.4,0.4);
	insert(8,building2);
	scaleObject(building2,2,2);

	building3 = new FlxSprite(1600,325).loadGraphic(Paths.image(prefix+'bgs/giggad/building3'));
	building3.scrollFactor.set(0.4,0.4);
	insert(9,building3);
	scaleObject(building3,3,3);

	tree3 = new FlxSprite(-1200,-400).loadGraphic(Paths.image(prefix+'bgs/giggad/tree3'));
	tree3.scrollFactor.set(0.5,0.5);
	insert(10,tree3);
	scaleObject(tree3,1,1);

	tree4 = new FlxSprite(1300,-500).loadGraphic(Paths.image(prefix+'bgs/giggad/tree4'));
	tree4.scrollFactor.set(0.5,0.5);
	insert(11,tree4);
	scaleObject(tree4,1,1);

	backhill = new FlxSprite(0,0).loadGraphic(Paths.image(prefix+'bgs/giggad/backhill'));
	backhill.scrollFactor.set(0.5,0.5);
	insert(12,backhill);
	scaleObject(backhill,2.5,2.5);
	backhill.screenCenter(FlxAxes.X);

	tree1 = new FlxSprite(-1000,-400).loadGraphic(Paths.image(prefix+'bgs/giggad/tree1'));
	tree1.scrollFactor.set(0.8,0.8);
	insert(13,tree1);
	scaleObject(tree1,1,1);

	tree2 = new FlxSprite(1600,-500).loadGraphic(Paths.image(prefix+'bgs/giggad/tree2'));
	tree2.scrollFactor.set(0.8,0.8);
	insert(14,tree2);
	scaleObject(tree2,1,1);

	fronthill = new FlxSprite(0,-100).loadGraphic(Paths.image(prefix+'bgs/giggad/fronthill'));
	fronthill.scrollFactor.set(0.8,0.8);
	insert(15,fronthill);
	scaleObject(fronthill,2.5,2.5);
	fronthill.screenCenter(FlxAxes.X);

	hind = new FlxSprite(0,20).loadGraphic(Paths.image(prefix+'bgs/newstaged/conall_bgBehind'));
	hind.scrollFactor.set(0.8,0.8);
	insert(16,hind);
	scaleObject(hind,1,1);
	hind.screenCenter(FlxAxes.X);
	hind.alpha=0;

	foreskin = new FlxSprite(0,325).loadGraphic(Paths.image(prefix+'bgs/giggad/foreskin'));
	foreskin.scrollFactor.set(1,1);
	insert(17,foreskin);
	scaleObject(foreskin,3,3);
	foreskin.screenCenter(FlxAxes.X);

	foreskinclean = new FlxSprite(0,325).loadGraphic(Paths.image(prefix+'bgs/giggad/foreskinclean'));
	foreskinclean.scrollFactor.set(1,1);
	insert(18,foreskinclean);
	scaleObject(foreskinclean,3,3);
	foreskinclean.screenCenter(FlxAxes.X);

	stone1 = new FlxSprite(500,125).loadGraphic(Paths.image(prefix+'bgs/giggad/stonebit1'));
	stone1.scrollFactor.set(0.95,0.95);
	insert(20,stone1);
	scaleObject(stone1,1.25,1.25);

	stone2 = new FlxSprite(700,625).loadGraphic(Paths.image(prefix+'bgs/giggad/stonebit2'));
	stone2.scrollFactor.set(0.95,0.95);
	insert(21,stone2);
	scaleObject(stone2,1.5,1.5);

	island = new FlxSprite(600,225).loadGraphic(Paths.image(prefix+'bgs/giggad/islandboi1'));
	island.scrollFactor.set(1,1);
	insert(22,island);
	scaleObject(island,3,3);
	island.screenCenter(FlxAxes.X);
	island.alpha=0;

	island2 = new FlxSprite(0,325).loadGraphic(Paths.image(prefix+'bgs/giggad/islandboi2'));
	island2.scrollFactor.set(1,1);
	insert(23,island2);
	scaleObject(island2,3,3);
	island2.screenCenter(FlxAxes.X);
	island2.alpha=0;

	noskin = new FlxSprite(0,325).loadGraphic(Paths.image(prefix+'bgs/newstaged/conall_bg'));
	noskin.scrollFactor.set(1,1);
	insert(24,noskin);
	scaleObject(noskin,1,1);
	noskin.screenCenter(FlxAxes.X);
	noskin.alpha=0;

	stone3 = new FlxSprite(0,325).loadGraphic(Paths.image(prefix+'bgs/giggad/stonebit3'));
	stone3.scrollFactor.set(0.95,0.95);
	insert(25,stone3);
	scaleObject(stone3,2,2);

	canvas = new FlxSprite(200,0).loadGraphic(Paths.image(prefix+'bgs/giggad/canvas'));
	canvas.scrollFactor.set(1,1);
	insert(26,canvas);
	scaleObject(canvas,3,3);

	canvasclean = new FlxSprite(200,0).loadGraphic(Paths.image(prefix+'bgs/giggad/canvasclean'));
	canvasclean.scrollFactor.set(1,1);
	insert(27,canvasclean);
	scaleObject(canvasclean,3,3);

    pentycanvas = new FlxSprite(280,200).loadGraphic(Paths.image(prefix+'bgs/giggad/pentycanvas'));
	pentycanvas.scrollFactor.set(1,1);
	insert(28,pentycanvas);
	scaleObject(pentycanvas,2.5,2.5);

	deadly1 = new FlxSprite(-680,-250).loadGraphic(Paths.image(prefix+'bgs/bloodsheddside/deadly1'));
	deadly1.scrollFactor.set(1,1);
	insert(400,deadly1);
	scaleObject(deadly1,1,0.8);
	deadly1.camera=camOther;
	deadly1.alpha=0;

	deadly2 = new FlxSprite(-680,-250).loadGraphic(Paths.image(prefix+'bgs/bloodsheddside/deadly2'));
	deadly2.scrollFactor.set(1,1);
	insert(401,deadly2);
	scaleObject(deadly2,1,0.8);
	deadly2.camera=camOther;
	deadly2.alpha=0;

	googoo = new FlxSprite(-300,-200);
    googoo.frames = Paths.getSparrowAtlas(prefix+'bgs/giggad/googoo');
	addAnimationByPrefix(googoo,'googoogaga','googoogaga',4,true);
	googoo.camera=camOther;
	googoo.scrollFactor.set(1,1);
	insert(598,googoo);
	scaleObject(googoo,0.7,0.7);
	googoo.alpha=0;
	googoo.screenCenter(FlxAxes.XY);

    grade = new FlxSprite(-750,-250).loadGraphic(Paths.image(prefix+'grade'));
	grade.scrollFactor.set(1,1);
	insert(599,grade);
	scaleObject(grade,0.6,0.6);
	grade.camera=camOther;
	grade.alpha=1;
	grade.screenCenter(FlxAxes.XY);

    alive = new FlxSprite(-1680,-1250).loadGraphic(Paths.image(prefix+'cum'));
	alive.scrollFactor.set(1,1);
	insert(604,alive);
	scaleObject(alive,10,10);
	alive.camera=camHUD;
	alive.alpha=0;
	alive.screenCenter(FlxAxes.XY);

	alivefake = new FlxSprite(-1680,-1250).loadGraphic(Paths.image(prefix+'cum'));
	alivefake.scrollFactor.set(1,1);
	insert(602,alivefake);
	scaleObject(alivefake,10,10);
	alivefake.camera=camOther;
	alivefake.alpha=0;
	alivefake.screenCenter(FlxAxes.XY);

	deadfake = new FlxSprite(-1680,-1250).loadGraphic(Paths.image(prefix+'dead'));
	deadfake.scrollFactor.set(1,1);
	insert(601,deadfake);
	scaleObject(deadfake,10,10);
	deadfake.camera=camHUD;
	deadfake.alpha=0;
	deadfake.screenCenter(FlxAxes.XY);

    dead = new FlxSprite(-1680,-1250).loadGraphic(Paths.image(prefix+'dead'));
	dead.scrollFactor.set(1,1);
	insert(603,dead);
	scaleObject(dead,10,10);
	dead.camera=camOther;
	dead.alpha=0.25;
	dead.screenCenter(FlxAxes.XY);
    
}