function update(){
    if (health < 0.59) psychScoreTxt.color=0xff0000;
    if (health > 0.6 && health < 1.4) psychScoreTxt.color=0xffffff;
    if (health > 1.41) psychScoreTxt.color=0x00ff00;

    psychScoreTxt.antialiasing=false;
    timeTxt.antialiasing=false;
}