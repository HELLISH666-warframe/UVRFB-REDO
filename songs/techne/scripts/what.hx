var pentyVar = 0;
var owo = 0;
var owo2 = 0;
var uwu = 0.002;
var daTingX = false;
var daTingY = false;
var daTingYSmall = false;
var hudAngle = false;
var yippee = 1;

function onSongStart(){
    tween('appearHUD',camHUD, {alpha:1}, 0.5);
    tween('unhide',dead, {alpha:0.5}, 3);
}

function beatHit(){
    switch(curBeat){
        case 315:fixed = dad.y-50;
        case 316|448:dad.y=fixed;
        case 447:fixed = dad.y+50;
        case 464:for(i in 0...strumLineNotes.length)tween('NoteMoveY'+i,strumLineNotes[i],{y:350},6,'linear');
        case 32:tween('byeDead',dead, {alpha:1}, 0.5,'quadInOut');
        tween('yeah',pentycanvas,[pentycanvas.color,0xFFFFFF],3,'linear',true);
        tween('scalebad',pentycanvas, {'scale.x':3}, 1.5,'quadInOut');
        tween('scalebad2',pentycanvas, {'scale.y':3}, 1.5,'quadInOut');
        tween('scalebad3',pentycanvas, {x:280}, 1.5,'quadInOut');
        tween('scalebad4',pentycanvas, {y:170}, 1.5,'quadInOut');
        tween('icooooonBite',simge2, {alpha:0}, 1.5,'quadInOut');
        case 36:pentyVar = 0.5;
        uwu = 0.005;
        tween('godButSmall',alive, {alpha:0.4}, 1,'quadIn');
        tween('dramaCam',camGame, {zoom:0.4}, 1.75,'quadInOut');
        tween('byeGrade',grade, {alpha:0}, 1.75,'quadInOut');
        tween('byebad',pentycanvas, {y:-5000}, 1.25,'quadIn');
        tween('byebad2',pentycanvas, {angle:-720}, 1.25,'quadIn');
        cameraSpeed=4;
        penty.angle=0;
        defaultCamZoom=0.4;
        case 37:cameraSpeed=0.6;
        case 38:tween('hellogood',penty, {y:-1500}, 0.75,'quadOut');
        case 40:tween('godButSmall',alive, {alpha:0}, 1,'quadOut');
        cameraSpeed=1;
        tween('icooooonBite',simge2, {alpha:1}, 0.5,'quadInOut');
        simge2.alpha=0;
        alive.alpha=1;
        dead.alpha=0;
        case 72:tween('dramaCam',camGame, {zoom:0.5}, 1.75,'quadInOut');
        defaultCamZoom=0.5;
        case 103:tween('dramaCam',camGame, {zoom:0.9}, 0.5,'quadInOut');
        defaultCamZoom=0.9;
        case 104:pentyVar = 2;
        camGame.shake(0.005,1.25);
        camHUD.shake(0.0025,1.25);
        tween('NoteMove526',cpuStrums.members[0], {y:-200}, 0.1,'quadIn');
        tween('NoteMove626',cpuStrums.members[1], {y:-200}, 0.2,'quadIn');
        tween('NoteMove726',cpuStrums.members[2], {y:-200}, 0.3,'quadIn');
        tween('NoteMove826',cpuStrums.members[3], {y:-200}, 0.4,'quadIn');
        tween('NoteMove52',playerStrums.members[0], {y:-200}, 0.1,'quadIn');
        tween('NoteMove62',playerStrums.members[1], {y:-200}, 0.2,'quadIn');
        tween('NoteMove72',playerStrums.members[2], {y:-200}, 0.3,'quadIn');
        tween('NoteMove82',playerStrums.members[3], {y:-200}, 0.4,'quadIn');
        tween('NoteAlpha1',cpuStrums.members[0], {alpha:0}, 1.25);
        tween('NoteAlpha2',cpuStrums.members[1], {alpha:0}, 1.25);
        tween('NoteAlpha3',cpuStrums.members[2], {alpha:0}, 1.25);
        tween('NoteAlpha4',cpuStrums.members[3], {alpha:0}, 1.25);
        tween('NoteAlpha5',playerStrums.members[0], {alpha:0}, 1.25);
        tween('NoteAlpha6',playerStrums.members[1], {alpha:0}, 1.25);
        tween('NoteAlpha7',playerStrums.members[2], {alpha:0}, 1.25);
        tween('NoteAlpha8',playerStrums.members[3], {alpha:0}, 1.25);
        tween('dramaCam',camGame, {zoom:0.3}, 1.25,'quadInOut');
        tween('dramaCamb',camGame, {angle:180}, 1.25,'quadInOut');
        tween('byebf',boyfriend, {y:-11800}, 1.5,'quadIn');
        tween('byedad',dad, {y:-12000}, 1.5,'quadIn');
        tween('gogood',penty, {y:-3750}, 1.25,'quadIn');
        tween('gocanvas',canvasclean, {y:-7750}, 1.25,'quadIn');
        tween('turnbf',boyfriend, {angle:360}, 1,'quadIn');
        tween('GOD',alivefake, {alpha:1}, 1,'quadIn');
        tween('byebyeStats',psychScoreTxt, {alpha:0}, 1.25,'quadIn');
        tween('byebyeStats2',sicks, {alpha:0}, 1.25,'quadIn');
        tween('byebyeStats3',goods, {alpha:0}, 1.25,'quadIn');
        tween('byebyeStats4',bads, {alpha:0}, 1.25,'quadIn');
        tween('byebyeStats5',shits, {alpha:0}, 1.25,'quadIn');
        runTimer('start', 0.01);
        case 108:uwu = 0.035;
        hudAngle = true;
        FlxG.sound.play(Paths.sound('fan/Ron Dside/boom'), 0.4);
        tween('NoteAlpha1',cpuStrums.members[0], {alpha:0.75}, 0.75);
        tween('NoteAlpha2',cpuStrums.members[1], {alpha:0.75}, 0.75);
        tween('NoteAlpha3',cpuStrums.members[2], {alpha:0.75}, 0.75);
        tween('NoteAlpha4',cpuStrums.members[3], {alpha:0.75}, 0.75);
        tween('NoteAlpha5',playerStrums.members[0], {alpha:1}, 0.75);
        tween('NoteAlpha6',playerStrums.members[1], {alpha:1}, 0.75);
        tween('NoteAlpha7',playerStrums.members[2], {alpha:1}, 0.75);
        tween('NoteAlpha8',playerStrums.members[3], {alpha:1}, 0.75);
        tween('NoteMove9r',playerStrums.members[0], {x:420}, 0.5,'bounceOut');
        tween('NoteMove10r',playerStrums.members[1], {x:530}, 0.5,'bounceOut');
        tween('NoteMove11r',playerStrums.members[2], {x:640}, 0.5,'bounceOut');
        tween('NoteMove12r',playerStrums.members[3], {x:750}, 0.5,'bounceOut');
        tween('dramaCam',camGame, {zoom:1}, 5,'linear');
        tween('dramaCam2',camGame, {angle:25}, 5,'linear');
        tween('GOD2',alivefake, {alpha:0}, 0.75,'quadIn');
        tween('byetree3',tree3, {y:-6000}, 3.5,'quadOut');
        tween('byetree4',tree4, {y:-5800}, 3.5,'quadOut');
        tween('byetree3b',tree3, {x:-100}, 3.5,'quadOut');
        tween('byetree4b',tree4, {x:800}, 3.5,'quadOut');
        tween('byebulding1',building1, {y:-4800}, 3.5,'quadOut');
        tween('byebulding2',building2, {y:-4600}, 3.5,'quadOut');
        tween('byebulding3',building3, {x:-5000}, 3.5,'quadOut');
        tween('txtdrop',timeTxt, {y:1500}, 3);
        tween('bgdrop',timeBarBG, {y:1500}, 3);
        tween('tpdrop',timeBar, {y:1500}, 3);
        tween('txttilt',timeTxt, {angle:360}, 4);
        tween('bgtilt',timeBarBG, {angle:-720}, 4);
        tween('tptilt',timeBar, {angle:-720}, 4);
        tween('yesHUD',camHUD, {alpha:1}, 0.75,'quadOut');
        tree1.scale.set(0.4,0.4);
        tree2.scale.set(0.4,0.4);
        tree3.scale.set(0.4,0.4);
        tree4.scale.set(0.4,0.4);
        cameraSpeed=2;
        defaultCamZoom=1.2;
        kamehameha.alpha=1;
        camGame.angle=0;
        googoo.alpha=0.7;
        stone1.alpha=0;
        stone2.alpha=0;
        stone3.alpha=0;
        canvasclean.alpha=0;
        foreskinclean.alpha=0;
        canvas.alpha=1;
        foreskin.alpha=1;
        pentycanvas.alpha=0;
        dad.y=-12000;
        for (i in cpuStrums.members) i.noteAngle=180;
        case 122:tween('NoteMove52',cpuStrums.members[0], {y:1000}, 0.65,'quadIn');
        tween('NoteMove62',cpuStrums.members[1], {y:1000}, 0.75,'quadIn');
        tween('NoteMove72',cpuStrums.members[2], {y:1000}, 0.85,'quadIn');
        tween('NoteMove82',cpuStrums.members[3], {y:1000}, 0.95,'quadIn');
        tween('NoteMove522',playerStrums.members[0], {y:50}, 0.3,'bounceOut');
        tween('NoteMove622',playerStrums.members[1], {y:50}, 0.4,'bounceOut');
        tween('NoteMove722',playerStrums.members[2], {y:50}, 0.5,'bounceOut');
        tween('NoteMove822',playerStrums.members[3], {y:50}, 0.6,'bounceOut');
        case 123:tween('dramaCam',camGame, {zoom:0.6}, 0.25,'quadOut');
        tween('dramaCamb',camGame, {angle:0}, 0.25,'quadOut');
        defaultCamZoom=0.6;
        case 124:tween('dramaCam2',camGame, {zoom:1.2}, 5,'linear');
        tween('dramaCamb2',camGame, {angle:-25}, 5,'linear');
        defaultCamZoom=1.2;
        case 138:tween('NoteMove522',cpuStrums.members[0], {y:550}, 0.3,'bounceOut');
        tween('NoteMove622',cpuStrums.members[1], {y:550}, 0.4,'bounceOut');
        tween('NoteMove722',cpuStrums.members[2], {y:550}, 0.5,'bounceOut');
        tween('NoteMove822',cpuStrums.members[3], {y:550}, 0.6,'bounceOut');
        case 139:tween('dramaCam3',camGame, {zoom:0.6}, 0.25,'quadOut');
        tween('dramaCamb3',camGame, {angle:0}, 0.25,'quadOut');
        defaultCamZoom=0.6;
        case 140:tween('dramaCam4',camGame, {zoom:1}, 5,'linear');
        tween('dramaCamb4',camGame, {angle:25}, 5,'linear');
        defaultCamZoom=1.2;
        case 155:tween('dramaCam5',camGame, {zoom:0.6}, 0.25,'quadOut');
        tween('dramaCamb5',camGame, {angle:0}, 0.25,'quadOut');
        defaultCamZoom=0.6;
        case 156:tween('dramaCam6',camGame, {zoom:0.9}, 5.5,'linear');
        tween('dramaCamb6',camGame, {angle:-180}, 5.5,'linear');
        tween('backbf',boyfriend, {y:-5825}, 5.5,'quadIn');
        tween('backdad',dad, {y:-6000}, 5.5,'quadIn');
        tween('gogood',penty, {y:-2750}, 5.5,'quadIn');
        tween('byetree1',tree1, {y:-4700}, 7.5,'quadOut');
        tween('byetree2',tree2, {y:-4200}, 7.5,'quadOut');
        tween('byetree3',tree3, {y:-4500}, 7.5,'quadOut');
        tween('byetree4',tree4, {y:-4300}, 7.5,'quadOut');
        tween('byebulding1',building1, {y:-3000}, 7.5,'quadOut');
        tween('byebulding2',building2, {y:-2700}, 7.5,'quadOut');
        tween('byebulding3',building3, {x:-4000}, 7.5,'quadOut');
        cameraSpeed=0.6;
        defaultCamZoom=0.9;
        case 168:tween('NoteAlpha5',cpuStrums.members[0], {alpha:1}, 1.75);
        tween('NoteAlpha6',cpuStrums.members[1], {alpha:1}, 1.75);
        tween('NoteAlpha7',cpuStrums.members[2], {alpha:1}, 1.75);
        tween('NoteAlpha8',cpuStrums.members[3], {alpha:1}, 1.75);
        tween('defaultPlayerStrumX0rf',cpuStrums.members[0], {x:120}, 2,'quadOut');
        tween('defaultPlayerStrumX1rf',cpuStrums.members[1], {x:230}, 2,'quadOut');
        tween('defaultPlayerStrumX2rf',cpuStrums.members[2], {x:340}, 2,'quadOut');
        tween('defaultPlayerStrumX3rf',cpuStrums.members[3], {x:450}, 2,'quadOut');
        tween('defaultPlayerStrumX4rf',playerStrums.members[0], {x:720}, 2,'quadOut');
        tween('defaultPlayerStrumX5rf',playerStrums.members[1], {x:830}, 2,'quadOut');
        tween('defaultPlayerStrumX6rf',playerStrums.members[2], {x:940}, 2,'quadOut');
        tween('defaultPlayerStrumX7rf',playerStrums.members[3], {x:1050}, 2,'quadOut');
        tween('NoteMoveY1',cpuStrums.members[0], {y:50}, 2,'quadOut');
        tween('NoteMoveY2',cpuStrums.members[1], {y:50}, 2,'quadOut');
        tween('NoteMoveY3',cpuStrums.members[2], {y:50}, 2,'quadOut');
        tween('NoteMoveY4',cpuStrums.members[3], {y:50}, 2,'quadOut');
        tween('NoteMoveY5',playerStrums.members[0], {y:50}, 2,'quadOut');
        tween('NoteMoveY6',playerStrums.members[1], {y:50}, 2,'quadOut');
        tween('NoteMoveY7',playerStrums.members[2], {y:50}, 2,'quadOut');
        tween('NoteMoveY8',playerStrums.members[3], {y:50}, 2,'quadOut');
        tween('GOD',alive, {alpha:1}, 1,'quadIn');
        case 172:daTingX = true;
        daTingY = true;
        hudAngle = false;
        yippee = 0.2;
        uwu = 0.01;
        tween('backCamHUD',camHUD, {angle:0}, 1,'quadOut');
        tween('dramaCam3',camGame, {zoom:0.6}, 1.5,'quadOut');
        defaultCamZoom=0.6;
        tween('GOD',alivefake, {alpha:0}, 0.75,'quadOut');
        tween('GOD2',alive, {alpha:0}, 1.25,'quadOut');
        tween('byebyeStats',psychScoreTxt, {alpha:1}, 1.25,'quadOut');
        tween('byebyeStats2',sicks, {alpha:1}, 1.25,'quadOut');
        tween('byebyeStats3',goods, {alpha:1}, 1.25,'quadOut');
        tween('byebyeStats4',bads, {alpha:1}, 1.25,'quadOut');
        tween('byebyeStats5',shits, {alpha:1}, 1.25,'quadOut');
        cameraSpeed=1;
        boyfriend.angle=0;
        island.alpha=1;
        island2.alpha=1;
        camGame.angle=0;
        googoo.alpha=0.4;
        alivefake.alpha=1;
        camGame.x=0;
        dad.angle=0;
        dad.y=-6000;
        for (i in cpuStrums.members) i.noteAngle=0;
        case 176:hudAngle = true;
        case 218:daTingX = false;
        tween('NoteAlpha1',cpuStrums.members[0], {alpha:0.75}, 1);
        tween('NoteAlpha2',cpuStrums.members[1], {alpha:0.75}, 1);
        tween('NoteAlpha3',cpuStrums.members[2], {alpha:0.75}, 1);
        tween('NoteAlpha4',cpuStrums.members[3], {alpha:0.75}, 1);
        tween('NoteMove1',cpuStrums.members[0], {x:420}, 0.6,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:530}, 0.65,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:640}, 0.7,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:750}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:420}, 0.6,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:530}, 0.65,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:640}, 0.7,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:750}, 0.75,'quadOut');
        tween('dramaCam3',camGame, {zoom:0.9}, 1.5,'quadInOut');
        defaultCamZoom=0.9;
        tween('GODISDEAD',grade, {alpha:1}, 1.25,'quadInOut');
        tween('GODISDEAD2',dead, {alpha:0.25}, 1.25,'quadInOut');
        cameraSpeed=0.6;
        case 234:tween('NoteAlpha1',cpuStrums.members[0], {alpha:1}, 0.5);
        tween('NoteAlpha2',cpuStrums.members[1], {alpha:1}, 0.5);
        tween('NoteAlpha3',cpuStrums.members[2], {alpha:1}, 0.5);
        tween('NoteAlpha4',cpuStrums.members[3], {alpha:1}, 0.5);
        tween('NoteMove1',cpuStrums.members[0], {x:120}, 0.6,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:230}, 0.65,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:340}, 0.7,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:450}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:720}, 0.6,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:830}, 0.65,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:940}, 0.7,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:1050}, 0.75,'quadOut');
        tween('dramaCam3',camGame, {zoom:0.6}, 0.75,'quadInOut');
        defaultCamZoom=0.6;
        tween('GODISDEAD',grade, {alpha:0}, 1.25,'quadInOut');
        tween('GODISDEAD2',dead, {alpha:0}, 1.25,'quadInOut');
        cameraSpeed=1;
        case 236:daTingX = true;
        case 251|283:tween('dramaCam3',camGame, {zoom:0.7}, 0.75,'quadInOut');
        defaultCamZoom=0.7;
        case 267:ween('dramaCam3',camGame, {zoom:0.6}, 0.75,'quadInOut');
        defaultCamZoom=0.6;
        case 300:daTingX = false;
        daTingY = false;
        hudAngle = false;
        yippee = 1;
        tween('NoteAlpha1',cpuStrums.members[0], {alpha:0}, 0.25);
        tween('NoteAlpha2',cpuStrums.members[1], {alpha:0}, 0.25);
        tween('NoteAlpha3',cpuStrums.members[2], {alpha:0}, 0.25);
        tween('NoteAlpha4',cpuStrums.members[3], {alpha:0}, 0.25);
        tween('NoteAlpha5',playerStrums.members[0], {alpha:0}, 0.25);
        tween('NoteAlpha6',playerStrums.members[1], {alpha:0}, 0.25);
        tween('NoteAlpha7',playerStrums.members[2], {alpha:0}, 0.25);
        tween('NoteAlpha8',playerStrums.members[3], {alpha:0}, 0.25);
        tween('BACKHUDBACKDEMON',camHUD,{angle:0},3,'quadOut');
        tween('BACKHUDBACKDEMON2',camHUD,{x:0},3,'quadOut');
        tween('BACKHUDBACKDEMON3',camHUD,{y:0},3,'quadOut');
        tween('NoteMove1',cpuStrums.members[0], {x:120}, 0.5,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:230}, 0.5,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:340}, 0.5,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:450}, 0.5,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:720}, 0.5,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:830}, 0.5,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:940}, 0.5,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:1050}, 0.5,'quadOut');
        for(i in 0...8)tween('NoteMoveY'+(i+1),strumLineNotes[i], {y:50}, 0.5,'quadOut');
        tween('GOD',alivefake, {alpha:0}, 0.75,'quadOut');
        tween('GODISDEAD',grade,{alpha:1},0.75,'quadOut');
        tween('GODISDEAD2',dead,{alpha:0.75},0.75,'quadOut');
        tween('dramaCamb6',camGame,{angle:-10},0.75,'quadInOut');
        tween('dramaCam3',camGame,{zoom:0.4},2.5,'quadOut');
        defaultCamZoom=0.4;
        alivefake.alpha=1;
        case 308:uwu = 0.005;
        tween('GOD',alivefake, {alpha:1}, 2.75,'quadIn');
        tween('GODISDEAD2',dead, {alpha:0.25}, 0.75,'quadIn');
        tween('dramaCamb6',camGame, {angle:15}, 2.75,'quadInOut');
        tween('dramaCam3',camGame, {zoom:1}, 2.75,'quadIn');
        defaultCamZoom=1;
        cameraSpeed=0.6;
        case 316:daTingYSmall = true;
        for(i in 0...4)tween('NoteAlpha'+(i+1),strumLineNotes[i], {alpha:1}, 0.75);
        tween('GOD',alivefake, {alpha:0}, 0.5,'quadOut');
        tween('dramaCam',camGame, {zoom:0.9}, 0.75,'quadOut');
        defaultCamZoom=0.9;
        hind.alpha=1;
        noskin.alpha=1;
        canvas.alpha=0;
        case 343:tween('dramaCamb6',camGame, {angle:0}, 1.75,'quadInOut');
        tween('dramaCam',camGame, {zoom:1}, 0.75,'quadInOut');
        defaultCamZoom=1;
        case 346:for(i in 0...4)tween('NoteAlpha'+(i+1),strumLineNotes[i], {alpha:0}, 0.75);
        tween('NoteAlpha5',playerStrums.members[0], {alpha:1}, 0.75);
        tween('NoteAlpha6',playerStrums.members[1], {alpha:1}, 0.75);
        tween('NoteAlpha7',playerStrums.members[2], {alpha:1}, 0.75);
        tween('NoteAlpha8',playerStrums.members[3], {alpha:1}, 0.75);
        case 347:tween('dramaCamb6',camGame, {angle:-15}, 2.75,'quadInOut');
        tween('dramaCam',camGame, {zoom:0.9}, 0.75,'quadInOut');
        defaultCamZoom=0.9;
        case 376:tween('dramaCamb6',camGame, {angle:0}, 1.25,'quadInOut');
        tween('dramaCam',camGame, {zoom:1}, 1.25,'quadInOut');
        defaultCamZoom=1;
        case 379:for(i in 0...4)tween('NoteAlpha'+(i+1),strumLineNotes[i], {alpha:1}, 0.75);
        case 380:camGame.shake(0.005, 0.75);
        camHUD.shake(0.0025, 0.75);
        tween('dramaCam',camGame, {zoom:0.8}, 1.75,'quadOut');
        defaultCamZoom=0.8;
        tween('woah',hind, {alpha:0.5}, 0.5,'quadOut');
        tween('woah2',noteskin, {alpha:0.5}, 0.5,'quadOut');
        case 381:tween('woah',hind, {alpha:1}, 0.5,'quadIn');
        tween('woah2',noskin, {alpha:1}, 0.5,'quadIn');
        case 410:tween('dramaCam',camGame, {zoom:0.7}, 1.75,'quadInOut');
        defaultCamZoom=0.7;
        case 412:tween('alphaCon',dad,{alpha:0.5},0.5,'circIn');
        tween('alpha111',hind,{alpha:0.75},0.5,'circIn');
        tween('alpha121',noskin,{alpha:0.75},0.5,'circIn');
        tween('alpha131',canvas,{alpha:0.25},0.5,'circIn');
        case 426:tween('dramaCam',camGame, {zoom:0.9}, 1.75,'quadInOut');
        defaultCamZoom=0.9;
        case 444:for(i in 0...8)tween('NoteMove'+(i+1),strumLineNotes[i],{y:50},0.5,'quadOut');
        for(i in 0...8)tween('NoteMove'+(i+1)+'yz',strumLineNotes[i],{angle:0},0.5,'quadOut');
        tween('alpha111',hind,{alpha:0},0.5,'circIn');
        tween('alpha121',noskin,{alpha:0},0.5,'circIn');
        tween('alpha131',canvas,{alpha:1},0.5,'circIn');
        tween('alpha141',deadfake,{alpha:1},0.5,'circIn');
        tween('dramaCam',camGame,{zoom:0.4},1.25,'quadInOut');
        defaultCamZoom=0.4;
        case 448:uwu = 0.035;
        daTingYSmall = false;
        camGame.shake(0.05, 0.25);
        camHUD.shake(0.025, 0.25);
        for(i in 0...8)tween('NoteMoveY'+(i+1),strumLineNotes[i],{y:50},0.5,'quadOut');
        tween('dramaCamb6',camGame,{angle:35},0.15,'quadIn');
        tween('GOD',alive,{alpha:0},0.75,'quadOut');
        tween('GODISDEAD',grade,{alpha:0},0.75,'quadOut');
        tween('GODISDEAD2',dead,{alpha:0},0.75,'quadOut');
        tween('dramaCam',camGame,{zoom:0.6},0.5,'bounceOut');
        defaultCamZoom=0.6;
        alive.alpha=1;
        cameraSpeed=4;
        hind.alpha=0;
        noskin.alpha=0;
        topBar.alpha=0;
        bottomBar.alpha=0;
        deadfake.alpha=0;
        dad.alpha=1;
        case 454:tween('dramaCam',camGame, {zoom:0.7}, 0.15,'bounceOut');
        defaultCamZoom=0.7;
        case 456:tween('dramaCamb6',camGame,{angle:35},0.15,'quadIn');
        tween('dramaCam',camGame, {zoom:0.8}, 0.25,'bounceOut');
        defaultCamZoom=0.8;
        case 458:tween('dramaCamb6',camGame, {angle:-35}, 0.15,'quadIn');
        tween('dramaCam',camGame, {zoom:0.9}, 0.25,'bounceOut');
        defaultCamZoom=0.9;
        case 460:tween('dramaCamb6',camGame, {angle:-35}, 0.15,'quadIn');
        tween('dramaCam',camGame, {zoom:1}, 0.25,'bounceOut');
        defaultCamZoom=1;
        case 462:tween('dramaCamb6',camGame,{angle:0},0.15,'quadIn');
        tween('dramaCam',camGame,{zoom:0.6},0.5,'bounceOut');
        defaultCamZoom=0.6;
        case 464:tween('dramaCam',camGame,{zoom:0.9},5,'linear');
        defaultCamZoom=0.9;
        case 476:tween('byebyeStats',psychScoreTxt, {alpha:0}, 1.25,'quadIn');
        tween('byebyeStats2',sicks, {alpha:0}, 1.25,'quadIn');
        tween('byebyeStats3',goods, {alpha:0}, 1.25,'quadIn');
        tween('byebyeStats4',bads, {alpha:0}, 1.25,'quadIn');
        tween('byebyeStats5',shits, {alpha:0}, 1.25,'quadIn');
        tween('byebulding1',building1,{y:-4800},1.5,'quadOut');
        tween('byebulding2',building2,{y:-4600},1.5,'quadOut');
        tween('byebulding3',building3,{x:-5000},1.5,'quadOut');
        tween('dramaCam',camGame,{zoom:0.4},1.25,'quadInOut');
        tween('dramaCamb',camGame, {angle:180}, 1.25,'quadInOut');
        tween('byebf',boyfriend, {y:-11800}, 1.5,'quadIn');
        tween('byedad',dad, {y:-12000}, 1.5,'quadIn');
        tween('gogood',penty, {y:-4750}, 1.25,'quadIn');
        tween('turnbf',boyfriend, {angle:360}, 1,'quadIn');
        tween('GOD',alive, {alpha:1}, 1,'quadIn');
        defaultCamZoom=0.4;
        cameraSpeed=0.3;
        case 480:uwu = 0.06;
        hudAngle = true;
        FlxG.sound.play(Paths.sound('fan/Ron Dside/boom'), 0.4);
        for(i in 0...4)tween('NoteAlpha'+(i+1),strumLineNotes[i], {alpha:0.5}, 0.75);
        tween('NoteAlpha5',playerStrums.members[0], {alpha:1}, 0.75);
        tween('NoteAlpha6',playerStrums.members[1], {alpha:1}, 0.75);
        tween('NoteAlpha7',playerStrums.members[2], {alpha:1}, 0.75);
        tween('NoteAlpha8',playerStrums.members[3], {alpha:1}, 0.75);
        tween('dramaCam',camGame,{zoom:1.2},10,'linear');
        tween('dramaCam2',camGame,{angle:35},10,'linear');
        tween('GOD',alivefake,{alpha:0},0.25,'quadOut');
        tween('GOD2',alive,{alpha:0},0.75,'quadOut');
        cameraSpeed=4;
        defaultCamZoom=1.5;
        camGame.angle=0;
        penty.scale.set(3.5,3.5);
        googoo.alpha=0.7;
        penty.screenCenter(FlxAxes.X);
        island.alpha=0;
        island2.alpha=0;
        alivefake.alpha=1;
        dad.angle=0;
        dad.y=-12000;
        for (i in cpuStrums.members) i.noteAngle=180;
        case 511:tween('dramaCam5',camGame,{zoom:0.4},0.25,'quadOut');
        tween('dramaCamb5',camGame,{angle:0},0.25,'quadOut');
        defaultCamZoom=0.4;
        case 512:uwu = 0.15;
        tween('dramaCam',camGame,{zoom:1.5},11,'linear');
        tween('dramaCam2',camGame,{angle:-35},11,'linear');
        defaultCamZoom=1.5;
        case 543:tween('dramaCam5',camGame,{zoom:0.5},0.25,'quadOut');
        tween('dramaCamb5',camGame,{angle:0},0.25,'quadOut');
        defaultCamZoom=0.5;
        case 544:tween('byebf',boyfriend,{y:450},2.75,'quadInOut');
        tween('byedad',dad,{y:300},2.75,'quadInOut');
        tween('hellogood',penty,{y:-2500},2.75,'quadInOut');
        tween('byePaint',kamehameha,{alpha:0},1.25);
        tween('GOD2',alive,{alpha:1},1.25,'quadOut');
        tween('dramaCam5',camGame,{zoom:0.9},1.25,'quadOut');
        defaultCamZoom=0.9;
        for (i in cpuStrums.members) i.noteAngle=0;
        case 548:uwu = 0.01;
        pentyVar = 0.05;
        hudAngle = false;
        tween('backCamHUD',camHUD, {angle:0}, 1,'quadOut');
        tween('defaultPlayerStrumX0rf',cpuStrums.members[0],{x:420},3,'quadOut');
        tween('defaultPlayerStrumX1rf',cpuStrums.members[1],{x:530},3,'quadOut');
        tween('defaultPlayerStrumX2rf',cpuStrums.members[2],{x:640},3,'quadOut');
        tween('defaultPlayerStrumX3rf',cpuStrums.members[3],{x:750},3,'quadOut');
        tween('defaultPlayerStrumX4rf',playerStrums.members[0],{x:420},3,'quadOut');
        tween('defaultPlayerStrumX5rf',playerStrums.members[1],{x:530},3,'quadOut');
        tween('defaultPlayerStrumX6rf',playerStrums.members[2],{x:640},3,'quadOut');
        tween('defaultPlayerStrumX7rf',playerStrums.members[3],{x:750},3,'quadOut');
        for(i in 0...8)tween('NoteMoveY'+(i+1),strumLineNotes[i],{y:50},3,'quadOut');
        tween('byebyeStats',psychScoreTxt, {alpha:1}, 1.25,'quadOut');
        tween('byebyeStats2',sicks, {alpha:1}, 1.25,'quadOut');
        tween('byebyeStats3',goods, {alpha:1}, 1.25,'quadOut');
        tween('byebyeStats4',bads, {alpha:1}, 1.25,'quadOut');
        tween('byebyeStats5',shits, {alpha:1}, 1.25,'quadOut');
        for(i in 0...8)tween('NoteAlpha'+(i+1),strumLineNotes[i],{alpha:0},2.25);
        tween('dramaCam5',camGame,{zoom:0.4},2.25,'quadInOut');
        tween('GOD2',alive,{alpha:0},0.75,'quadOut');
        defaultCamZoom=0.4;
        boyfriend.angle=0;
        cameraSpeed=0.6;
        googoo.alpha=0;
        stone1.alpha=0;
        stone2.alpha=0;
        stone3.alpha=0;
        canvas.angle=0;
        dad.y=300;
        case 546:tween('dramaCam5',camGame,{zoom:0.6},0.75,'quadInOut');
        defaultCamZoom=0.6;
        case 564:tween('dramaCam5',camGame,{zoom:0.9},1,'quadIn');
        defaultCamZoom=0.9;
        tween('deadHi',dead,{alpha:1},1,'quadIn');
    }
    if (curBeat >= 108 && curBeat < 122){
        tween('NoteMove9',cpuStrums.members[0], {x:FlxG.random.int(380, 460)}, 0.5,'quadOut');
        tween('NoteMove10',cpuStrums.members[1], {x:FlxG.random.int(490, 570)}, 0.5,'quadOut');
        tween('NoteMove11',cpuStrums.members[2], {x:FlxG.random.int(600, 680)}, 0.5,'quadOut');
        tween('NoteMove12',cpuStrums.members[3], {x:FlxG.random.int(710, 790)}, 0.5,'quadOut');
        tween('NoteMove13',cpuStrums.members[0], {y:FlxG.random.int(530, 610)}, 0.5,'quadOut');
        tween('NoteMove14',cpuStrums.members[1], {y:FlxG.random.int(530, 610)}, 0.5,'quadOut');
        tween('NoteMove15',cpuStrums.members[2], {y:FlxG.random.int(530, 610)}, 0.5,'quadOut');
        tween('NoteMove16',cpuStrums.members[3], {y:FlxG.random.int(530, 610)}, 0.5,'quadOut');
    }
    if (curBeat >= 124 && curBeat < 140){
        tween('NoteMove1',playerStrums.members[0], {x:FlxG.random.int(380, 460)}, 0.5,'quadOut');
        tween('NoteMove2',playerStrums.members[1], {x:FlxG.random.int(490, 570)}, 0.5,'quadOut');
        tween('NoteMove3',playerStrums.members[2], {x:FlxG.random.int(600, 680)}, 0.5,'quadOut');
        tween('NoteMove4',playerStrums.members[3], {x:FlxG.random.int(710, 790)}, 0.5,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {y:FlxG.random.int(30, 110)}, 0.5,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {y:FlxG.random.int(30, 110)}, 0.5,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {y:FlxG.random.int(30, 110)}, 0.5,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {y:FlxG.random.int(30, 110)}, 0.5,'quadOut');
    }
    if (curBeat >= 140 && curBeat < 168){
        tween('NoteMove5',playerStrums.members[0], {y:FlxG.random.int(30, 110)}, 0.5,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {y:FlxG.random.int(30, 110)}, 0.5,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {y:FlxG.random.int(30, 110)}, 0.5,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {y:FlxG.random.int(30, 110)}, 0.5,'quadOut');
        tween('NoteMove13',cpuStrums.members[0], {y:FlxG.random.int(530, 610)}, 0.25,'quadOut');
        tween('NoteMove14',cpuStrums.members[1], {y:FlxG.random.int(530, 610)}, 0.25,'quadOut');
        tween('NoteMove15',cpuStrums.members[2], {y:FlxG.random.int(530, 610)}, 0.25,'quadOut');
        tween('NoteMove16',cpuStrums.members[3], {y:FlxG.random.int(530, 610)}, 0.25,'quadOut');
    }
    if (curBeat >= 480 && curBeat < 548){
        tween('NoteMove5',playerStrums.members[0], {y:FlxG.random.int(30, 170)}, 0.5,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {y:FlxG.random.int(30, 170)}, 0.5,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {y:FlxG.random.int(30, 170)}, 0.5,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {y:FlxG.random.int(30, 170)}, 0.5,'quadOut');
        tween('NoteMove13',cpuStrums.members[0], {y:FlxG.random.int(530, 670)}, 0.5,'quadOut');
        tween('NoteMove14',cpuStrums.members[1], {y:FlxG.random.int(530, 670)}, 0.5,'quadOut');
        tween('NoteMove15',cpuStrums.members[2], {y:FlxG.random.int(530, 670)}, 0.5,'quadOut');
        tween('NoteMove16',cpuStrums.members[3], {y:FlxG.random.int(530, 670)}, 0.5,'quadOut');
    }
    if (curBeat >= 316 && curBeat < 380){
        if (curBeat %2 == 0){
            tween('boing',topBar, {y:-200}, 0.5,'quadOut');
            tween('boing2',bottomBar, {y:600}, 0.5,'quadOut');
            tween('GETBACKDEMONBACK',camHUD, {zoomy:1}, 0.5,'quadOut');
            topBar.y=-180;
            bottomBar.y=580;
            camHUD.zoom=0.95;
        }
    }
}

function onTimerCompleted(tag:String){
    switch(tag){
        case 'start':tween('alpha11',deadly1,{alpha:owo2},0.5,'circInOut');
        tween('alpha12',deadly2,{alpha:owo},0.5,'circInOut');
        tween('alpha13',deadly1,{'scale.x':1.25},0.5,'circInOut');
        tween('alpha14',deadly2,{'scale.y':0.75},0.5,'circInOut');
        runTimer('end', 0.5);
        case 'end':tween('alpha11',deadly1,{alpha:owo},0.5,'circInOut');
        tween('alpha12',deadly2,{alpha:owo2},0.5,'circInOut');
        tween('alpha13',deadly1,{'scale.x':0.75},0.5,'circInOut');
        tween('alpha14',deadly2,{'scale.y':1.25},0.5,'circInOut');
        runTimer('start', 0.5);
        case 'movePaint':runTimer('movePaint', 0.06);
        kamehameha.y+=250;
        case 'death':close(true);
    }
}

function update(elapsed:Float){
    var currentBeat = (Conductor.songPosition/100)/(Conductor.bpm/170);
    currentBeat2 = (Conductor.songPosition / 1000) * (PlayState.SONG.meta.bpm / 170);

    //canvas.y=boyfriend.y-550;

    if (curBeat >= 380 && curBeat <= 444){  
        tween('defaultPlayerStrumX0rft',cpuStrums.members[0],{x:120+(Math.sin(currentBeat/8+0.1)*50)},0.25);
        tween('defaultPlayerStrumX1rft',cpuStrums.members[1],{x:230+(Math.sin(currentBeat/8+0.2)*50)},0.25);
        tween('defaultPlayerStrumX2rft',cpuStrums.members[2],{x:340+(Math.sin(currentBeat/8+0.3)*50)},0.25);
        tween('defaultPlayerStrumX3rft',cpuStrums.members[3],{x:450+(Math.sin(currentBeat/8+0.4)*50)},0.25);
        tween('defaultPlayerStrumX4rft',playerStrums.members[0],{x:720+(Math.sin(currentBeat/8+0.5)*50)},0.25);
        tween('defaultPlayerStrumX5rft',playerStrums.members[1],{x:830+(Math.sin(currentBeat/8+0.6)*50)},0.25);
        tween('defaultPlayerStrumX6rft',playerStrums.members[2],{x:940+(Math.sin(currentBeat/8+0.7)*50)},0.25);
        tween('defaultPlayerStrumX7rft',playerStrums.members[3],{x:1050+(Math.sin(currentBeat/8+0.8)*50)},0.25);
    }
    if (curBeat >= 412 && curBeat <= 444){
        tween('defaultPlayerStrumX0rfta',cpuStrums.members[0],{angle:0+(Math.sin(currentBeat/7+0.1)*5)},0.25);
        tween('defaultPlayerStrumX1rfta',cpuStrums.members[1],{angle:0+(Math.sin(currentBeat/7+0.2)*5)},0.25);
        tween('defaultPlayerStrumX2rfta',cpuStrums.members[2],{angle:0+(Math.sin(currentBeat/7+0.3)*5)},0.25);
        tween('defaultPlayerStrumX3rfta',cpuStrums.members[3],{angle:0+(Math.sin(currentBeat/7+0.4)*5)},0.25);
        tween('defaultPlayerStrumX4rfta',playerStrums.members[0],{angle:0+(Math.sin(currentBeat/7+0.5)*5)},0.25);
        tween('defaultPlayerStrumX5rfta',playerStrums.members[1],{angle:0+(Math.sin(currentBeat/7+0.6)*5)},0.25);
        tween('defaultPlayerStrumX6rfta',playerStrums.members[2],{angle:0+(Math.sin(currentBeat/7+0.7)*5)},0.25);
        tween('defaultPlayerStrumX7rfta',playerStrums.members[3],{angle:0+(Math.sin(currentBeat/7+0.8)*5)},0.25);
    }
    if (curBeat >= 140 && curBeat < 168){
        if (curBeat >= 140 && curBeat < 144){
            tween('defaultPlayerStrumX0rf',cpuStrums.members[0],{x:750+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX1rf',cpuStrums.members[1],{x:640+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX2rf',cpuStrums.members[2],{x:530+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX3rf',cpuStrums.members[3],{x:420+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX4rf',playerStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX5rf',playerStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX6rf',playerStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX7rf',playerStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
        }
        if (curBeat >= 144 && curBeat < 148){
            tween('defaultPlayerStrumX0rf',cpuStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX1rf',cpuStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX2rf',cpuStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX3rf',cpuStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX4rf',playerStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX5rf',playerStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX6rf',playerStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX7rf',playerStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
        }
        if (curBeat >= 148 && curBeat < 152){
            tween('defaultPlayerStrumX0rf',cpuStrums.members[0],{x:750+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX1rf',cpuStrums.members[1],{x:640+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX2rf',cpuStrums.members[2],{x:530+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX3rf',cpuStrums.members[3],{x:420+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX4rf',playerStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX5rf',playerStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX6rf',playerStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX7rf',playerStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
        }
        if (curBeat >= 152 && curBeat < 156){
            tween('defaultPlayerStrumX0rf',cpuStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX1rf',cpuStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX2rf',cpuStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX3rf',cpuStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX4rf',playerStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX5rf',playerStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX6rf',playerStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX7rf',playerStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
        }
        if (curBeat >= 156 && curBeat < 160){
            tween('defaultPlayerStrumX0rf',cpuStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX1rf',cpuStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX2rf',cpuStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX3rf',cpuStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX4rf',playerStrums.members[0],{x:750+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX5rf',playerStrums.members[1],{x:640+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX6rf',playerStrums.members[2],{x:530+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX7rf',playerStrums.members[3],{x:420+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
        }
        if (curBeat >= 160 && curBeat < 164){
            tween('defaultPlayerStrumX0rf',cpuStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX1rf',cpuStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX2rf',cpuStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX3rf',cpuStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX4rf',playerStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX5rf',playerStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX6rf',playerStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX7rf',playerStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
        }
        if (curBeat >= 164 && curBeat < 168){
            tween('defaultPlayerStrumX0rf',cpuStrums.members[0],{x:420+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX1rf',cpuStrums.members[1],{x:530+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX2rf',cpuStrums.members[2],{x:640+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX3rf',cpuStrums.members[3],{x:750+(Math.sin(currentBeat/3+0.1)*450)},0.25);
            tween('defaultPlayerStrumX4rf',playerStrums.members[0],{x:750+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX5rf',playerStrums.members[1],{x:640+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX6rf',playerStrums.members[2],{x:530+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
            tween('defaultPlayerStrumX7rf',playerStrums.members[3],{x:420+(Math.sin(currentBeat/3+0.1)*-450)},0.25);
        }
    }

    if (curBeat >= 176 && curBeat < 300){  
        camHUD.x=0 - -40 * Math.cos((currentBeat2*0.33)*Math.PI);
        camHUD.y=0 - -20 * Math.cos((currentBeat2*0.42)*Math.PI);
    }

    //if (curBeat < 548) canvas.angle=0 - 18 * Math.cos((currentBeat2*0.36)*Math.PI);

    if (hudAngle) camHUD.angle=0 - -15*yippee * Math.cos((currentBeat2*0.33)*Math.PI);

    if (daTingX){
        tween('defaultPlayerStrumX0r',cpuStrums.members[0],{x:120+(Math.sin(currentBeat/3+0.1)*50)},0.001);
        tween('defaultPlayerStrumX1r',cpuStrums.members[1],{x:230+(Math.sin(currentBeat/3+0.2)*50)},0.001);
        tween('defaultPlayerStrumX2r',cpuStrums.members[2],{x:340+(Math.sin(currentBeat/3+0.3)*50)},0.001);
        tween('defaultPlayerStrumX3r',cpuStrums.members[3],{x:450+(Math.sin(currentBeat/3+0.4)*50)},0.001);
        tween('defaultPlayerStrumX0rr',playerStrums.members[0],{x:720+(Math.sin(currentBeat/3+0.1)*-50)},0.001);
        tween('defaultPlayerStrumX1rr',playerStrums.members[1],{x:830+(Math.sin(currentBeat/3+0.2)*-50)},0.001);
        tween('defaultPlayerStrumX2rr',playerStrums.members[2],{x:940+(Math.sin(currentBeat/3+0.3)*-50)},0.001);
        tween('defaultPlayerStrumX3rr',playerStrums.members[3],{x:1050+(Math.sin(currentBeat/3+0.4)*-50)},0.001);
    }
    if (daTingY){
        tween('defaultPlayerStrumY4r',cpuStrums.members[0],{y:50+(Math.cos(currentBeat/2+0.2)*25)},0.001);
        tween('defaultPlayerStrumY5r',cpuStrums.members[1],{y:50+(Math.cos(currentBeat/2+0.4)*25)},0.001);
        tween('defaultPlayerStrumY6r',cpuStrums.members[2],{y:50+(Math.cos(currentBeat/2+0.6)*25)},0.001);
        tween('defaultPlayerStrumY7r',cpuStrums.members[3],{y:50+(Math.cos(currentBeat/2+0.8)*25)},0.001);
        tween('defaultPlayerStrumY4rr',playerStrums.members[0],{y:50+(Math.cos(currentBeat/2+0.2)*-25)},0.001);
        tween('defaultPlayerStrumY5rr',playerStrums.members[1],{y:50+(Math.cos(currentBeat/2+0.4)*-25)},0.001);
        tween('defaultPlayerStrumY6rr',playerStrums.members[2],{y:50+(Math.cos(currentBeat/2+0.6)*-25)},0.001);
        tween('defaultPlayerStrumY7rr',playerStrums.members[3],{y:50+(Math.cos(currentBeat/2+0.8)*-25)},0.001);
    }
    if (daTingYSmall){
        tween('defaultPlayerStrumY4r',cpuStrums.members[0],{y:50+(Math.cos(currentBeat/6+0.5)*25)},0.001);
        tween('defaultPlayerStrumY5r',cpuStrums.members[1],{y:50+(Math.cos(currentBeat/6+1)*25)},0.001);
        tween('defaultPlayerStrumY6r',cpuStrums.members[2],{y:50+(Math.cos(currentBeat/6+1.5)*25)},0.001);
        tween('defaultPlayerStrumY7r',cpuStrums.members[3],{y:50+(Math.cos(currentBeat/6+2)*25)},0.001);
        tween('defaultPlayerStrumY4rr',playerStrums.members[0],{y:50+(Math.cos(currentBeat/6+0.5)*-25)},0.001);
        tween('defaultPlayerStrumY5rr',playerStrums.members[1],{y:50+(Math.cos(currentBeat/6+1)*-25)},0.001);
        tween('defaultPlayerStrumY6rr',playerStrums.members[2],{y:50+(Math.cos(currentBeat/6+1.5)*-25)},0.001);
        tween('defaultPlayerStrumY7rr',playerStrums.members[3],{y:50+(Math.cos(currentBeat/6+2)*-25)},0.001);
    }

    /*hind.y=(boyfriend.y+200);
    noskin.y=(boyfriend.y-850);

    stone1.x=(boyfriend.x-800);
    stone2.x=(boyfriend.x-500);
    stone3.x=(boyfriend.x-100);
    stone1.y=(boyfriend.y+150);
    stone2.y=(boyfriend.y+350);
    stone3.y=(boyfriend.y+100);

    penty.angle-=pentyVar;
    stone1.angle-=0.05;
    stone2.angle+=0.066;
    stone3.angle-=0.058;

    building1.angle=0 - 20 * Math.cos((currentBeat2*0.33)*Math.PI);
    building2.angle=0 - -30 * Math.cos((currentBeat2*0.44)*Math.PI);
    building3.angle=0 - 15 * Math.cos((currentBeat2*0.55)*Math.PI);

    if (curBeat >= 108 && curBeat <= 316){
        simge1.alpha=health/0.8;
        if (health <= 2 && health > 1.75) tween('alphap',simge2,{alpha:0.125},0.1);
        if (health <= 1.75 && health > 1.5) tween('alphap',simge2,{alpha:0.25},0.1);
        if (health <= 1.5 && health > 1.25) tween('alphap',simge2,{alpha:0.375},0.1);
        if (health <= 1.25 && health > 1) tween('alphap',simge2,{alpha:0.5},0.1);
        if (health <= 1 && health > 0.75) tween('alphap',simge2,{alpha:0.625},0.1);
        if (health <= 0.75 && health > 0.5) tween('alphap',simge2,{alpha:0.75},0.1);
        if (health <= 0.5 && health > 0.25) tween('alphap',simge2,{alpha:0.875},0.1);
        if (health <= 0.25) tween('alphap',simge2,{alpha:1},0.1);
    }

    if (curBeat == 316) simge1.visible=simge2.visible=false;
    if (curBeat == 548) simge1.visible=simge2.visible=false;

    if (curBeat >= 448){
        simge1.alpha=health/0.8;
        if (health <= 2 && health > 1.75) tween('alphap',simge2,{alpha:0.125},0.1);
        if (health <= 1.75 && health > 1.5) tween('alphap',simge2,{alpha:0.25},0.1);
        if (health <= 1.5 && health > 1.25) tween('alphap',simge2,{alpha:0.375},0.1);
        if (health <= 1.25 && health > 1) tween('alphap',simge2,{alpha:0.5},0.1);
        if (health <= 1 && health > 0.75) tween('alphap',simge2,{alpha:0.625},0.1);
        if (health <= 0.75 && health > 0.5) tween('alphap',simge2,{alpha:0.75},0.1);
        if (health <= 0.5 && health > 0.25) tween('alphap',simge2,{alpha:0.875},0.1);
        if (health <= 0.25) tween('alphap',simge2,{alpha:1},0.1);
    }*/

    if (curBeat >= 36 && curBeat < 548){
        if (health > 1.6){owo = 0.1*0.9; owo2 = 0.2*0.9;}
        if (health <= 1.6 && health > 1.2){owo = 0.3*0.9; owo2 = 0.4*0.9;}
        if (health <= 1.2 && health > 0.8){owo = 0.5*0.9; owo2 = 0.6*0.9;}
        if (health <= 0.8 && health > 0.4){owo = 0.7*0.9; owo2 = 0.8*0.9;}
        if (health <= 0.4){owo = 0.9*0.9; owo2 = 1*0.9;}
    }

    if (curBeat == 40 && health > 0.01) health/=1.015;

    /*if (curBeat <= 464){
        island.x=dad.x - 300;
        island.y=dad.y + 375;
        island2.x=boyfriend.x + -125;
        island2.y=boyfriend.y + 200;
    }

    if (curBeat >= 108){
        tree1.angle=0 - 13 * Math.cos((currentBeat2*0.39)*Math.PI);
        tree2.angle=0 - -19 * Math.cos((currentBeat2*0.22)*Math.PI);
        tree3.angle=0 - 17 * Math.cos((currentBeat2*0.25)*Math.PI);
        tree4.angle=0 - 15 * Math.cos((currentBeat2*0.48)*Math.PI);
    }*/
    if (curBeat >= 108 && curBeat < 172){
        dad.angle=0 - 5 * Math.cos((currentBeat2*0.25)*Math.PI);
        boyfriend.angle+=0.5;
        camGame.shake(0.0075, 0.05);
        camHUD.shake(0.004, 0.05);
    }
    if (curBeat >= 172 && curBeat < 220){
        camGame.shake(0.0025, 0.05);
        camHUD.shake(0.001, 0.05);
    }
    if (curBeat >= 220 && curBeat < 234){
        camGame.shake(0.00125, 0.05);
        camHUD.shake(0.0005, 0.05);
    }
    if (curBeat >= 234 && curBeat < 300){
        camGame.shake(0.0025, 0.05);
        camHUD.shake(0.001, 0.05);
    }
    if (curBeat >= 300 && curBeat < 444){
        camGame.shake(0.000625, 0.05);
        camHUD.shake(0.00025, 0.05);
    }
    if (curBeat >= 448 && curBeat < 480){
        camGame.shake(0.005, 0.05);
        camHUD.shake(0.002, 0.05);
    }
    if (curBeat >= 480 && curBeat < 544){
        dad.angle=0 - 5 * Math.cos((currentBeat2*0.25)*Math.PI);
        boyfriend.angle+=0.5;
    }
    if (curBeat >= 480 && curBeat < 556){
        camGame.shake(0.0075, 0.05);
        camHUD.shake(0.004, 0.05);
    }

    //if (kamehameha.y >= -2500) kamehameha.y=-3250;

    if (curBeat >= 40 && curBeat < 41 && pentyVar > 0.1) pentyVar -= 0.005;
    if (curBeat == 104 && curBeat < 105 && pentyVar < 2) pentyVar += 0.005;
    if (curBeat == 172 && curBeat < 173 && pentyVar > 0.25) pentyVar -= 0.005;
    if (curBeat == 218 && curBeat < 219 && pentyVar > 0.1) pentyVar -= 0.005;
    if (curBeat == 232 && curBeat < 233 && pentyVar < 0.25) pentyVar += 0.005;
    if (curBeat == 300) pentyVar = 0.05;
    if (curBeat == 444 && curBeat < 448 && pentyVar > 0) pentyVar -= 0.0025;
    if (curBeat == 448) pentyVar = 2.5;
    if (curBeat == 480) pentyVar = 5;
}

function stepHit() {
    if (curStep == 1792){
        tween('NoteMove1',cpuStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:1050}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:450}, 0.75,'quadOut');

        tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
        camHUD.angle=20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
    }
    if (curStep == 1808){
        tween('NoteMove1',cpuStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:450}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:1050}, 0.75,'quadOut');

        tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
        camHUD.angle=-20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
    }
    if (curStep == 1818){ 
        tween('NoteMove1',cpuStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:1050}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:450}, 0.75,'quadOut');

        tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
        camHUD.angle=20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
        tween('dramaCamb6',camGame, {angle:-35}, 0.15,'quadIn');
        tween('dramaCam',camGame, {zoom:0.7}, 0.25,'bounceOut');
        defaultCamZoom=0.7;
    }
    if (curStep == 1824){
        tween('NoteMove1',cpuStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:450}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:1050}, 0.75,'quadOut');

        tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
        camHUD.angle=-20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
    }
    if (curStep == 1832){
        tween('NoteMove1',cpuStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:1050}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:450}, 0.75,'quadOut');

        tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
        camHUD.angle=20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
    }
    if (curStep == 1840){
        tween('NoteMove1',cpuStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:450}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:1050}, 0.75,'quadOut');

        tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
        camHUD.angle=-20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
    }
    if (curStep == 1848){
        tween('NoteMove1',cpuStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:1050}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:450}, 0.75,'quadOut');

        tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
        camHUD.angle=20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
    }
    if (curStep == 1852){
        tween('NoteMove1',cpuStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:450}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:1050}, 0.75,'quadOut');

        tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
        camHUD.angle=-20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
    }
    if (curStep == 1856){
        tween('NoteMove1',cpuStrums.members[0], {x:720}, 0.75,'quadOut');
        tween('NoteMove2',cpuStrums.members[1], {x:830}, 0.75,'quadOut');
        tween('NoteMove3',cpuStrums.members[2], {x:940}, 0.75,'quadOut');
        tween('NoteMove4',cpuStrums.members[3], {x:1050}, 0.75,'quadOut');
        tween('NoteMove5',playerStrums.members[0], {x:120}, 0.75,'quadOut');
        tween('NoteMove6',playerStrums.members[1], {x:230}, 0.75,'quadOut');
        tween('NoteMove7',playerStrums.members[2], {x:340}, 0.75,'quadOut');
        tween('NoteMove8',playerStrums.members[3], {x:450}, 0.75,'quadOut');

        tween('backOut2',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.angle=20;
        tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut');
        camHUD.zoom=1.15;
    }
    if (curBeat >= 40 && curBeat < 72){
        if (curStep % 16 == 0){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=10;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.025;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=25;
        }
        if (curStep % 16 == 4){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=-10;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.025;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=-25;
        }
        if (curStep % 16 == 8){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=10;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.025;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=25;
        }
        if (curStep % 16 == 11){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=-10;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.025;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=-25;
        }
        if (curStep % 16 == 14){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=10;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.025;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=25;
        }
    }
    if (curBeat >= 72 && curBeat < 103){
        if (curStep % 16 == 0){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=15;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            for(i in 0...strumLineNotes.length)tween('Secret'+i,strumLineNotes[i],{y:50},0.5,'quadOut');

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=35;

            strumLineNotes[0].y=25;
            strumLineNotes[1].y=75;
            strumLineNotes[2].y=25;
            strumLineNotes[3].y=75;
            strumLineNotes[4].y=25;
            strumLineNotes[5].y=75;
            strumLineNotes[6].y=25;
            strumLineNotes[7].y=75;
        }
        if (curStep % 16 == 4){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...strumLineNotes.length)tween('Secret'+i,strumLineNotes[i],{y:50},0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=-15;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=-35;

            strumLineNotes[0].y=75;
            strumLineNotes[1].y=25;
            strumLineNotes[2].y=75;
            strumLineNotes[3].y=25;
            strumLineNotes[4].y=75;
            strumLineNotes[5].y=25;
            strumLineNotes[6].y=75;
            strumLineNotes[7].y=25;
        }
        if (curStep % 16 == 8){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...strumLineNotes.length)tween('Secret'+i,strumLineNotes[i],{y:50},0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=15;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=35;

            strumLineNotes[0].y=25;
            strumLineNotes[1].y=75;
            strumLineNotes[2].y=25;
            strumLineNotes[3].y=75;
            strumLineNotes[4].y=25;
            strumLineNotes[5].y=75;
            strumLineNotes[6].y=25;
            strumLineNotes[7].y=75;
        }
        if (curStep % 16 == 11){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...strumLineNotes.length)tween('Secret'+i,strumLineNotes[i],{y:50},0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=-15;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=-35;

            strumLineNotes[0].y=75;
            strumLineNotes[1].y=25;
            strumLineNotes[2].y=75;
            strumLineNotes[3].y=25;
            strumLineNotes[4].y=75;
            strumLineNotes[5].y=25;
            strumLineNotes[6].y=75;
            strumLineNotes[7].y=25;
        }
        if (curStep % 16 == 14){
            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');
            for(i in 0...strumLineNotes.length)tween('Secret'+i,strumLineNotes[i],{y:50},0.5,'quadOut');
            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=15;});
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('GETBACK',camHUD, {x:0}, 0.5,'quadOut');
            camHUD.x=35;

            strumLineNotes[0].y=25;
            strumLineNotes[1].y=75;
            strumLineNotes[2].y=25;
            strumLineNotes[3].y=75;
            strumLineNotes[4].y=25;
            strumLineNotes[5].y=75;
            strumLineNotes[6].y=25;
            strumLineNotes[7].y=75;
        }
    }
    if (curBeat >= 108 && curBeat < 168){
        if (curStep % 16 == 0){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
        if (curStep % 16 == 2){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
        if (curStep % 16 == 6){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
        if (curStep % 16 == 8){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
        if (curStep % 16 == 10){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
        if (curStep % 16 == 12){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
        if (curStep % 16 == 13){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
        if (curStep % 16 == 14){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
        if (curStep % 16 == 15){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.1;}
    }
    if (curBeat >= 172 && curBeat < 220){
        if (curStep % 16 == 0){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=25;});
        }
        if (curStep % 16 == 4){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=-25;});
        }
        if (curStep % 16 == 8){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=25;});
        }
        if (curStep % 16 == 11){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=-25;});
        }
        if (curStep % 16 == 14){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=25;});
        }
    }
    if (curBeat >= 236 && curBeat < 300){
        if (curStep % 16 == 0){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=25;});
        }
        if (curStep % 16 == 4){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=-25;});
        }
        if (curStep % 16 == 8){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=25;});
        }
        if (curStep % 16 == 11){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=-25;});
        }
        if (curStep % 16 == 14){
            tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut');
            camHUD.zoom=1.075;

            tween('NoteAngle9',cpuStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle10',cpuStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle11',cpuStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle12',cpuStrums.members[3], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle13',playerStrums.members[0], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle14',playerStrums.members[1], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle15',playerStrums.members[2], {angle:0}, 0.5,'quadOut');
            tween('NoteAngle16',playerStrums.members[3], {angle:0}, 0.5,'quadOut');

            for(i in 0...2)strumLines.members[i].forEach((a) -> {a.angle=25;});
        }
    }
    if (curBeat >= 464 && curBeat < 480){
        if (curStep % 16 == 0){
            tween('NoteMove1',cpuStrums.members[0], {x:120}, 0.4,'quadOut');
            tween('NoteMove2',cpuStrums.members[1], {x:230}, 0.4,'quadOut');
            tween('NoteMove3',cpuStrums.members[2], {x:340}, 0.4,'quadOut');
            tween('NoteMove4',cpuStrums.members[3], {x:450}, 0.4,'quadOut');
            tween('NoteMove5',playerStrums.members[0], {x:720}, 0.4,'quadOut');
            tween('NoteMove6',playerStrums.members[1], {x:830}, 0.4,'quadOut');
            tween('NoteMove7',playerStrums.members[2], {x:940}, 0.4,'quadOut');
            tween('NoteMove8',playerStrums.members[3], {x:1050}, 0.4,'quadOut');

            tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
            camHUD.angle=20;
        }
        if (curStep % 16 == 4){
            tween('NoteMove1',cpuStrums.members[0], {x:720}, 0.4,'quadOut');
            tween('NoteMove2',cpuStrums.members[1], {x:830}, 0.4,'quadOut');
            tween('NoteMove3',cpuStrums.members[2], {x:940}, 0.4,'quadOut');
            tween('NoteMove4',cpuStrums.members[3], {x:1050}, 0.4,'quadOut');
            tween('NoteMove5',playerStrums.members[0], {x:120}, 0.4,'quadOut');
            tween('NoteMove6',playerStrums.members[1], {x:230}, 0.4,'quadOut');
            tween('NoteMove7',playerStrums.members[2], {x:340}, 0.4,'quadOut');
            tween('NoteMove8',playerStrums.members[3], {x:450}, 0.4,'quadOut');

            tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
            camHUD.angle=-20;
        }
        if (curStep % 16 == 8){
            tween('NoteMove1',cpuStrums.members[0], {x:120}, 0.4,'quadOut');
            tween('NoteMove2',cpuStrums.members[1], {x:230}, 0.4,'quadOut');
            tween('NoteMove3',cpuStrums.members[2], {x:340}, 0.4,'quadOut');
            tween('NoteMove4',cpuStrums.members[3], {x:450}, 0.4,'quadOut');
            tween('NoteMove5',playerStrums.members[0], {x:720}, 0.4,'quadOut');
            tween('NoteMove6',playerStrums.members[1], {x:830}, 0.4,'quadOut');
            tween('NoteMove7',playerStrums.members[2], {x:940}, 0.4,'quadOut');
            tween('NoteMove8',playerStrums.members[3], {x:1050}, 0.4,'quadOut');

            tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
            camHUD.angle=20;
        }
        if (curStep % 16 == 12){
            tween('NoteMove1',cpuStrums.members[0], {x:720}, 0.4,'quadOut');
            tween('NoteMove2',cpuStrums.members[1], {x:830}, 0.4,'quadOut');
            tween('NoteMove3',cpuStrums.members[2], {x:940}, 0.4,'quadOut');
            tween('NoteMove4',cpuStrums.members[3], {x:1050}, 0.4,'quadOut');
            tween('NoteMove5',playerStrums.members[0], {x:120}, 0.4,'quadOut');
            tween('NoteMove6',playerStrums.members[1], {x:230}, 0.4,'quadOut');
            tween('NoteMove7',playerStrums.members[2], {x:340}, 0.4,'quadOut');
            tween('NoteMove8',playerStrums.members[3], {x:450}, 0.4,'quadOut');

            tween('backOut2',camHUD, {angle:0}, 0.75,'expoOut');
            camHUD.angle=-20;
        }
    }
    if (curBeat >= 464 && curBeat < 476){
        if (curStep % 16 == 0){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.15;}
        if (curStep % 16 == 4){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.15;}
        if (curStep % 16 == 8){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.15;}
        if (curStep % 16 == 12){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.15;}
    }
    if (curBeat >= 476 && curBeat < 480){
        if (curStep % 16 == 0){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.15;}
        if (curStep % 16 == 2){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.05;}
        if (curStep % 16 == 4){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.15;}
        if (curStep % 16 == 6){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.05;}
        if (curStep % 16 == 8){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.15;}
        if (curStep % 16 == 10){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.05;}
        if (curStep % 16 == 12){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.15;}
        if (curStep % 16 == 14){tween('backOut',camHUD, {zoom:1}, 0.75,'expoOut'); camHUD.zoom=1.05;}
    }
    if (curBeat >= 480 && curBeat < 548){
        if (curStep % 16 == 0){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
        if (curStep % 16 == 2){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
        if (curStep % 16 == 6){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
        if (curStep % 16 == 8){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
        if (curStep % 16 == 10){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
        if (curStep % 16 == 12){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
        if (curStep % 16 == 13){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
        if (curStep % 16 == 14){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
        if (curStep % 16 == 15){tween('backOut',camHUD, {zoom:1}, 0.5,'expoOut'); camHUD.zoom=1.075;}
    }
}

function onDadHit(){
    if (curBeat >= 40){
        camGame.shake(0.00125, 0.05);
        camHUD.shake(0.000625, 0.05);
    }

    if (curBeat < 512 && health > 0.1) health-=uwu;
    if (curBeat >= 512 && health > 0.175) health-=uwu;
}