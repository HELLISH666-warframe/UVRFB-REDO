var prefix='Ron Dside/';

var sprMap:Map<String, FlxSprite>=[];

function MakeSprite(tag,image,x,y){
    
}

function onCreate()
    var e = new FlxSprite().loadGraphic(Paths.image("credits/" + creditJSON[i].name));

    makeLuaSprite('bg', 'dead', 300, -200);
	setLuaSpriteScrollFactor('bg', 1, 1);
    setObjectOrder('bg', 5)
	scaleObject('bg', 0.1775, 2)
	setObjectCamera('bg', 'camHUD');
	setProperty('bg.alpha', 0.5)

    addLuaSprite('bg', true);
end

function onUpdate()
    for i = 4, 4 do
        xPos = getPropertyFromGroup('strumLineNotes', i, 'x')
    end

    setProperty('bg.x', xPos - 5)
end