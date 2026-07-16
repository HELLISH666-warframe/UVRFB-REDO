// Gameplay
public var songSpeedTween:FlxTween;

function onEvent(_) {
	var e=_.event;
   switch(e.name){
      case 'Psike/Change Scroll Speed':if (modSave.gameplaySettings['scrolltype'] == "constant") return;
      var val1:Float = Std.parseFloat(_.event.params[0]);
		var val2:Float = Std.parseFloat(_.event.params[1]);
		if(Math.isNaN(val1)) val1 = 1;
		if(Math.isNaN(val2)) val2 = 0;

      var newValue:Float = PlayState.SONG.scrollSpeed * modSave.gameplaySettings['scrollspeed'] * val1;

      if(val2 <= 0) scrollSpeed = newValue;
		else {
			songSpeedTween = FlxTween.tween(this, {scrollSpeed: newValue}, val2 / modSave.gameplaySettings['songspeed'], {ease: FlxEase.linear, onComplete:
				function (twn:FlxTween) {songSpeedTween = null;}
			});
		}
   }
}