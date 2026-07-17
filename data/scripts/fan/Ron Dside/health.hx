function onPlayerHit(e){
    if(e.note.isSustainNote)return;
    switch(e.rating){
        case 'sick':health+=0.025;
        case 'bad':health-=0.01;
        case 'shit':health-=0.02;
    }
}

function onPlayerMiss(e) if(!e.note.isSustainNote) health-=0.03;