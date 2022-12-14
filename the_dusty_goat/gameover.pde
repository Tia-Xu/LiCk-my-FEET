//This function draws the GAMEOVER screen.

void gameOver() {
  background(255);
  image(go,width/2, height/2, width-100, height-100);
  text("coins:" + coins,400,400);
  textSize(100);
  text("loser",400,300);
  carrot.show();
  end.show();
  if(end.clicked){
    mode=INTRO;
    reset();
  }
}
