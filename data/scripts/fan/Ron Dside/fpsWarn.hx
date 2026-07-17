import flixel.text.FlxTextBorderStyle;
function postCreate(){
    if(modSave.framerate<240){
        warningBro = new FlxText(0,0,1200,'YOU MUST RUN AT AN FPS CAP OF 240 OR THINGS WILL LOOK WRONG!', 100);
        warningBro.setFormat(Paths.font("vcr.ttf"), 100, FlxColor.WHITE, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        add(warningBro).camera=camHUD; 
        warningBro.antialiasing=false;
        warningBro.screenCenter(FlxAxes.XY);
    }
}