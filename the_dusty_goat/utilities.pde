void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && mousePressed == false) {
    mouseReleased = true;
    wasPressed = false;
  }
}
void reset(){
   wave=0;
  size(800, 600);
  initializeModes();
  initializeVariables();
  makeButtons();
  makeNodes();
  lives=5;
  
  
}
