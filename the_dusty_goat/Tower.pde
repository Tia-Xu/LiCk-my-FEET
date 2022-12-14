//A Tower is the player's main defense against the mobs.
//Towers are placed on the maps and then automatically
//act. There are 3 kinds of towers (but you can make more!)

//Gun  Tower: These towers shoot bullets that fly across
//           the screen and do damage to mobs.

//AoE Tower: These towers place AoE_Rings that deal damage
//           to all mobs in the ring.

//Sniper Tower: These towers automatically target the first
//              mob no matter where they are on the scren.

class Tower {
  final int Placing=0;
  final int Placed=1;
  int x, y;
  int cooldown, threshold;
  int tmode;
  boolean collide;
  Tower(int _x, int _y, int c, int th) {
    x=_x;
    y=_y;
    cooldown=c;
    threshold=th;
    tmode=Placing;
  }


  void show() {
    color c =get(mouseX, mouseY);
    int i=0;
    while (aoe.size()>i) {
      if (dist(mouseX, mouseY, aoe.get(i).x, aoe.get(i).y)<15) {
        collide=true;
      } else {
        collide=false;
      }
      i++;
    }
    while (snips.size()>i) {
      if (dist(mouseX, mouseY, snips.get(i).x, snips.get(i).y)<15) {
        collide=true;
      } else {
        collide=false;
      }
      i++;
    }
    while (towers.size()>i) {
      if (dist(mouseX, mouseY, towers.get(i).x, towers.get(i).y)<15 ) {
        collide=true;
      } else {
        collide=false;
      }
      i++;
    }
    
    strokeWeight(4);
    fill(black);
    if (tmode==Placed) {
      image(tows, x, y, 30, 30);
    } else if (tmode==Placing && mouseX<675  &&  c!=lbrown && collide==false) {
  
      image(tows, mouseX, mouseY, 50, 50);
      if (mousePressed) {
        tmode=Placed;
        x=mouseX;
        y=mouseY;
       
      }
   
    }
  }
  void act() {
    cooldown++;
    if (cooldown>=threshold) {

      cooldown=0;
      if (mobs.size() > 0) {
        bullets.add(new Bullet(x, y, 0, -15, 10));
        bullets.add(new Bullet(x, y, 0, 15, 10));
        bullets.add(new Bullet(x, y, -15, 0, 10));
        bullets.add(new Bullet(x, y, 15, 0, 10));
      }
    }
    int i=0;
    while (i<aoe.size() && i<snips.size() && i<towers.size()) {
      if (dist(mouseX, mouseY, aoe.get(i).x, aoe.get(i).y)<15 && dist(mouseX, mouseY, snips.get(i).x, snips.get(i).y)<15 && dist(mouseX, mouseY, towers.get(i).x, towers.get(i).y)<15 ) {
        collide=true;
      } else {
        collide=false;
      }
      i++;
    }
  }
}
