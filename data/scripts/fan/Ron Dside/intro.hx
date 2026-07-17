public var three,two,one,go;

function create(){
    three = new FlxSprite(-750,-250).loadGraphic(Paths.image('Ron Dside/new3'));
    two = new FlxSprite(-750,-250).loadGraphic(Paths.image('Ron Dside/new2'));
    one = new FlxSprite(-750,-250).loadGraphic(Paths.image('Ron Dside/new1'));
    go = new FlxSprite(-750,-250).loadGraphic(Paths.image('Ron Dside/newgo'));

    for(i in [three,two,one,go]){
        insert(5,i);
        i.scale.set(1.5,1.5);
        i.updateHitbox();
        i.camera=camOther;
        i.screenCenter(FlxAxes.XY);
        i.alpha=0;
    }
}

function onCountdown(e){
    switch(e.swagCounter){
        case 0: tween('hehe',three, {alpha:0}, 0.25);
        tween('ohhar',three, {angle:-30}, 0.25,'cubeIn');
        tween('haha',three, {x:three.x - 300}, 0.25,'cubeIn');
        three.alpha=1;
        case 1:tween('hehe2',two, {alpha:0}, 0.25);
        tween('ohhar2',two, {angle:30}, 0.25,'cubeIn');
        tween('haha2',two, {x:two.x + 300}, 0.25,'cubeIn');
        two.alpha=1;
        case 2:tween('hehe3',one, {alpha:0}, 0.25);
        tween('ohhar3',one, {angle:-30}, 0.25,'cubeIn');
        tween('haha3',one, {x:one.x - 300}, 0.25,'cubeIn');
        one.alpha=1;
        case 3:tween('hehe4',go, {alpha:0}, 0.25);
        tween('haha4',go, {'scale.x':2}, 0.25,'cubeOut');
        tween('haha5',go, {'scale.y':2}, 0.25,'cubeOut');
        go.alpha=1;
    }
}