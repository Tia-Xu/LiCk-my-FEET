//This function draws the PLAY screen

void play() {

  drawMap();
  animateThings();
  drawPlayInterface();
  handlebc();
}

void drawMap() {
  if (mapp == 1) map1();
  else map2();
  int i=0;
  while (i<6) {
    nodes[i].show();
    i++;
  }
}

void drawPlayInterface() {
  fill(0);
  stroke(0);
  strokeWeight(5);
  rect(width, height/2, 250, height);
  play.show();
  textSize(15);
  text("next wave: "+wave, 735, 150);
  build.show();
  text("lives:" +lives, 735, 320);
  text("money:"+coins, 735, 400);
  back.show();
}


void animateThings() {
  int i=0;
  while (i<mobs.size()) {
    Mob myMob=mobs.get(i);
    myMob.act();
    myMob.show();
    if (myMob.hp<=0) {
      mobs.remove(i);
    } else {

      i++;
    }
  }
  i=0;
  while (i<towers.size()) {
    Tower myTower =towers.get(i);
    myTower.act();
    myTower.show();
    i++;
  }

  i=0;
  while (i<aoe.size()) {
    Aoe myAoe =aoe.get(i);
    myAoe.act();
    myAoe.show();
    i++;
  }
  i=0;
  while (i<snips.size()) {
    Snip mySnip =snips.get(i);
    mySnip.act();
    mySnip.show();
    i++;
  }

  i=0;
  while (i<bullets.size()) {
    Bullet myBullet =bullets.get(i);
    myBullet.act();
    myBullet.show();
    if (myBullet.hp<=0) {
      bullets.remove(i);
    } else {
      i++;
    }
  }
}

void handlebc() {
  if (play.clicked) {
    if (mobs.size()<=0) {
      addWave();
    }
  }
  if (build.clicked) {
    mode=BUILD;
  }
  if (back.clicked) {
    mode=MAP;
    int i = 0;
    while (i<mobs.size()) mobs.remove(0);
    while (i<aoe.size())  aoe.remove(0);
    while (i<snips.size())  snips.remove(0);
    while (i<towers.size())  towers.remove(0);
    wave=0;
  }

  if (lives==0) {
    mode=GAMEOVER;
  }
}

void addWave() {

  int i=0;

  while (i<=wave) {
    mobs.add (new Mob(100, 600+i*30, 0, -1));
    i++;
  }
  wave++;
  if (wave % 3==0) {
    mobs.add (new Speedymob(100, 600+i*30, 0, -1));
  }
  if (wave % 5==0) {
    mobs.add (new Chonkymob(100, 600+i*30, 0, -1));
  }
}
