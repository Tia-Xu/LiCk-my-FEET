//This function draws the BUILD screen


void build() {

  drawbMap();
  animatebThings();
  drawbPlayInterface();
  handleb2c();
}

void drawbMap() {

  if(mapp == 1) map1();
  else map2();
  int i=0;
  while (i<6) {
    nodes[i].show();
    i++;
  }
}


void drawbPlayInterface() {
 fill(0);
  stroke(0);
  strokeWeight(5);
  rect(width, height/2, 250, height);
  play.show();
  textSize(15);
  text("next wave:"+wave, 735, 150);
  build.show();
  text("Bob the builder", 400, 100);
  play.show();
  text("5",735,236);
  text("10",735,310);
  text("25",735,387);
  gun.show();
  tow.show();
  towe.show();
  text("money:"+coins, 735, 500);
}


void animatebThings() {
  int i=0;
  while (i<mobs.size()) {
    Mob myMob=mobs.get(i);
   // myMob.act();
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

void handleb2c() {
   if (gun.clicked && coins>=5) {

    towers.add(new Tower(0, 0, 0, 30));
    coins=coins-5;
  }
  
  if(towe.clicked && coins>=10){
    aoe.add(new Aoe(0,0,0,30,5));
    coins=coins-10;
    
  }
  if (tow.clicked && coins>=25){
    snips.add(new Snip(0,0,0,30));
    coins=coins-25;
  }
  if (play.clicked) {
    mode=PLAY;
  }
}
