class Speedymob extends Mob {
  Speedymob(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy);
    maxhp=1+wave;
    hp=maxhp;
    value=5;
    fil=white;
    str=black;
    speed=2;
  }

  void show() {
    healthbar();
    if (hp==0)
      coins=coins+5;
    //if (x>700) {
    //  lives=lives-1;
    //  mobs.remove(this);
    //}
    }
}
