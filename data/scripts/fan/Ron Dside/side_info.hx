import flixel.text.FlxTextBorderStyle;
public var sicks,goods,bads,shits;
function postCreate(){
    sicks = new FlxText(0,375,200,"Cools: "+hits['sick'], 20);
    goods = new FlxText(0,400,200,"Goods: "+hits['good'], 20);
    bads = new FlxText(0,425,200,"Bads: "+hits['bad'], 20);
    shits = new FlxText(0,450,200,"Shits: "+hits['shit'], 20);
    for(i in [sicks,goods,bads,shits]){i.setFormat(Paths.font("vcr.ttf"), 16, FlxColor.WHITE, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    add(i).camera=camHUD; i.antialiasing=false;}
}

function onPlayerHit(e){
    sicks.text="Cools: "+hits['sick'];
    goods.text="Goods: "+hits['good'];
    bads.text="Bads: "+hits['bad'];
    shits.text="Shits: "+hits['shit'];
    switch(e.rating){
        case 'sick':tween('stretch',sicks,{'scale.x':1},0.5,'quadOut'); sicks.scale.x=1.5;
        case 'good':tween('stretch2',goods,{'scale.x':1},0.5,'quadOut'); goods.scale.x=1.5;
        case 'bad':tween('stretch3',bads,{'scale.x':1},0.5,'quadOut'); bads.scale.x=1.5;
        case 'shit':tween('stretch4',shits,{'scale.x':1},0.5,'quadOut'); shits.scale.x=1.5;
    }
}