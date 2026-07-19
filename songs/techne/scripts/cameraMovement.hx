var Intensity = 40;
 
var followchars = true;
var startCam = false;

var camOffX = 0;
var camOffY = 0;

var dadPos = [0,0];
var bfPos = [0,0];
var gfPos = [0,0];

function onSongStart(){findCharCam(); runTimer("canStartCamera", 0.4);}

function postUpdate(){
   if (followchars && startCam){
      anim = strumLines.members[0].characters[0].getAnimName();
      if (curCameraTarget==1 && curCameraTarget!=2) anim = strumLines.members[1].characters[0].getAnimName();
      if (curCameraTarget==2) anim = strumLines.members[2].characters[0].getAnimName();

      if (curBeat < 38){
         if (startsWith(anim, "singLEFT")){camOffY = 0; camOffX = 0 - Intensity;}
         if (startsWith(anim, "singRIGHT")){camOffY = 0; camOffX = Intensity;}
         if (startsWith(anim, "singUP")){camOffX = 0; camOffY = 0 - Intensity;}
         if (startsWith(anim, "singDOWN")){camOffX = 0; camOffY = Intensity;}
         if (startsWith(anim, "idle")){camOffX = 0; camOffY = 0;}
      }
      if (curBeat >= 38 && curBeat < 72){
         if (startsWith(anim, "singLEFT")){camOffY = 0 -375; camOffX = 0 - Intensity;}
         if (startsWith(anim, "singRIGHT")){camOffY = 0 -375; camOffX = Intensity;}
         if (startsWith(anim, "singUP")){camOffX = 0; camOffY = 0 - Intensity -375;}
         if (startsWith(anim, "singDOWN")){camOffX = 0; camOffY = Intensity -375;}
         if (startsWith(anim, "idle")){camOffX = 0; camOffY = -375;}
      }
      if (curBeat >= 72 && curBeat < 108){
         if (startsWith(anim, "singLEFT")){ camOffY = 0 -275; camOffX = 0 - Intensity;}
         if (startsWith(anim, "singRIGHT")){camOffY = 0 -275; camOffX = Intensity;}
         if (startsWith(anim, "singUP")){camOffX = 0; camOffY = 0 - Intensity -275;}
         if (startsWith(anim, "singDOWN")){camOffX = 0; camOffY = Intensity -275;}
         if (startsWith(anim, "idle")){camOffX = 0; camOffY = -275;}
      }
      if (curBeat >= 108 && curBeat < 550){
         if (startsWith(anim, "singLEFT")){camOffY = 0; camOffX = 0 - Intensity;}
         if (startsWith(anim, "singRIGHT")){camOffY = 0; camOffX = Intensity;}
         if (startsWith(anim, "singUP")){camOffX = 0; camOffY = 0 - Intensity;}
         if (startsWith(anim, "singDOWN")){camOffX = 0; camOffY = Intensity;}
         if (startsWith(anim, "idle")){camOffX = 0; camOffY = 0;}
      }
      if (curBeat >= 550 && curBeat < 556){
         if (startsWith(anim, "singLEFT")){camOffY = 0 -375; camOffX = 0 - Intensity;}
         if (startsWith(anim, "singRIGHT")){camOffY = 0 -375; camOffX = Intensity;}
         if (startsWith(anim, "singUP")){camOffX = 0; camOffY = 0 - Intensity -375;}
         if (startsWith(anim, "singDOWN")){camOffX = 0; camOffY = Intensity -375;}
         if (startsWith(anim, "idle")){camOffX = 0; camOffY = -375;}
      }
      if (curBeat >= 556){
         if (startsWith(anim, "singLEFT")){camOffY = 0 -125; camOffX = 0 - Intensity;}
         if (startsWith(anim, "singRIGHT")){camOffY = 0 -125; camOffX = Intensity;}
         if (startsWith(anim, "singUP")){camOffX = 0; camOffY = 0 - Intensity -125;}
         if (startsWith(anim, "singDOWN")){camOffX = 0; camOffY = Intensity -125;}
         if (startsWith(anim, "idle")){camOffX = 0; camOffY = -125;}
      }
   }
   
   if (followchars && startCam){
      cameraX = camFollow.x;
      cameraY = camFollow.y;
      bfX=boyfriend.x;
      bfY=boyfriend.y;
      dadX=dad.x;
      dadY=dad.y;
      gfX=gf.x;
      gfY=gf.y;

      if (curCameraTarget==1 && curCameraTarget!=2 && (bfPos[0] != null && bfPos[1] != null)){
         cameraX = getMid(bfX , boyfriend.width) - 100;
         cameraY = getMid(bfY , boyfriend.height) - 100;
         cameraX = cameraX - bfPos[0];
         cameraY = cameraY + bfPos[1];
      }else if(curCameraTarget!=1 && curCameraTarget!=2 && (dadPos[0] != null && dadPos[1] != null)){
         cameraX = getMid(dadX , dad.width) + 150;
         cameraY = getMid(dadY , dad.height) - 100;
         cameraX = cameraX + dadPos[0];
         cameraY = cameraY + dadPos[1];
      }
      if (curCameraTarget==2 && (gfPos[0] != null && gfPos[1] != null)){ 
         cameraX = getMid(gfX);
         cameraY = getMid(gfY);
         cameraX = cameraX + gfPos[0];
         cameraY = cameraY + gfPos[1];
      }
      
      camFollow.x=cameraX + camOffX;
      camFollow.y=cameraY + camOffY;
   }
}

function onTimerCompleted(tag, loops, loopsLeft)
   switch(tag){
      case 'camOff':followchars = false;
      case 'camOn':followchars = true;
      case 'canStartCamera':startCam = true;
   }

function getMid(value, size){
   fixSize = 0;

   if (size != null) fixSize = size;
   else fixSize = value;
   result = value + (size / 2);

   return result;
}

function startsWith(str,start) return StringTools.startsWith(str, start);

function onEvent(_) if (_.event.name == "Change Character") findCharCam();

function findCharCam(){
   dadPos[0] = dad.cameraOffset[0];
   dadPos[1] = dad.cameraOffset[1];

   bfPos[0] = boyfriend.cameraOffset[0];
   bfPos[1] = boyfriend.cameraOffset[1];

   gfPos[0] = gf.cameraOffset[0];
   gfPos[1] = gf.cameraOffset[1];
}