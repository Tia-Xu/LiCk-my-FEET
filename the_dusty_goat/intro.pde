//This function draws the INTRO screen.

void intro() {
  
  image(tower, width/2, height/2, width, height);
  image(logo,width/2, height/3, 300, 300);
 
  image(wood, width/3, height-120, 300,300);
  strokeWeight(5);
 // ellipse(width/3, height-155,177,145);
   start.show();
  if (start.clicked){
    mode=MAP;
  }
}

 
    

  
