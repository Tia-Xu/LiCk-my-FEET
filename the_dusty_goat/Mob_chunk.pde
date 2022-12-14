class Chonkymob extends Mob {
  Chonkymob(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy);
    maxhp=5+wave;
    hp=maxhp;
    value=5;
    fil=white;
    str=black;
    speed=0.5;
  }

  void show() {
    healthbar();
    if (hp==0)
      coins=coins+5;
   
    }
  
}
