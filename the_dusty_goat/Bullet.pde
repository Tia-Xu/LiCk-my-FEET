//Some towers shoot bullets! If a mob is hit by a bullet,
//it does damage.

class Bullet {
  float x,y, vx, vy ,d ;
  int hp;
  
  Bullet(float _x, float _y, float _vx, float _vy, float _d){
  x=_x;
  y=_y;
  vx=_vx;
  vy=_vy;
  d=_d;
  hp=1;
  
}
void act(){
  x=x+vx;
  y=y+vy;
 
  int i = 0;
  while(i<mobs.size()) {
  if(dist(x, y, mobs.get(i).x, mobs.get(i).y)<d/2+mobs.get(i).d/2) {
    hp = 0;
    mobs.get(i).hp=mobs.get(i).hp-1;
  }
  i++;
  }
  
  if(x < 0 && x > width && y < 0 && y > height) hp = 0;
}


void show(){
  strokeWeight(3);
  fill(black);
  circle(x,y,d);
  
}
}
