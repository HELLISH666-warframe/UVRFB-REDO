var startValue = 0;
public var topBar;
public var bottomBar;

function create(){
	topBar = new FlxSprite(-11080,-420).makeSolid(4160,360,0xFF000000);
	insert(0,topBar).camera=camHUD;
	topBar.alpha=0;

	bottomBar = new FlxSprite(12080,920).makeSolid(4160,360,0xFF000000);
	insert(0,bottomBar).camera=camHUD;
	bottomBar.alpha=0;
}

function update(){
	if (startValue == 1){
		tween('TopBarAppear',topBar,{alpha:1},0.5,'sineOut');
		tween('BottomBarAppear',bottomBar,{alpha:1},0.5,'sineOut');
		tween('TopBarStart',topBar,{y:-200},0.5,'sineOut');
		tween('BottomBarStart',bottomBar,{y:600},0.5,'sineOut');
		tween('TopBarStart2',topBar,{x:-200},0.5,'sineOut');
		tween('BottomBarStart2',bottomBar,{x:-200},0.5,'sineOut');
	}
	if (startValue == 2){
		tween('TopBarVanish',topBar,{alpha:0},0.5,'sineOut');
		tween('BottomBarVanish',bottomBar,{alpha:0},0.5,'sineOut');
		tween('TopBarEnd',topBar,{y:-420},0.5,'sineOut');
		tween('BottomBarEnd',bottomBar,{y:920},0.5,'sineOut');
		tween('TopBarStart2',topBar,{x:-11080},0.5,'sineOut');
		tween('BottomBarStart2',bottomBar,{x:12080},0.5,'sineOut');
	}
}

function onEvent(_) if(_.event.name=='Ron Dside V1/Cinematic_Bars') startValue = _.event.params[0];