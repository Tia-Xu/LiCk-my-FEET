void mapp() {
image(boo,width/2, height/2, width, height);
image(me,500,200,100,75);
image(bob,200,200,100,75);
image(doot,200,350,180,130);
image(beep, 500,350,180,130);
  map1.show();
  map2.show();
  if (map1.clicked) {
    mapp=1;
    nodes=m1nodes;
    mode=PLAY;
  }
  if (map2.clicked) {
    mapp=2;
    nodes=m2nodes;
    mode=PLAY;
  }
}
void map1() {
  
  image(spa,width/2, height/2-50, width+100, height+100);
  fill(lbrown);
  text(mouseX+","+ mouseY, mouseX, mouseY-20);
  //path
  stroke(lbrown);
  strokeWeight(50);
  line(100, 600, 100, 300);
  line(100, 300, 300, 300);
  line(300, 300, 300, 150);
  line(300, 150, 400, 150);
  line(400, 150, 400, 450);
  line(400, 450, 600, 450);
  line(600, 450, 600, 250);
  line(600, 250, 750, 250);
}

void map2(){
image(lbss,width/2, height/2, width, height);

fill(lbrown);
text(mouseX+","+ mouseY, mouseX, mouseY-20);
//path
stroke(lbrown);
strokeWeight(50);
line(100,600,100,300);
line(100,300,200,300);
line(200,300,200,100);
line(200,100,500,100);
line(500,100,500,400);
line(500,400,700,400);
line(700,400,800,400);




}
