void gameoverwin () { 
     background(255);
  PImage frame= gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n>49) n=0;
   textFont (font); 
    textSize (100);
    text ("YOU WIN!", 150, 230); 

  
    textFont (font); 
    textSize (50);
    text ("Click to Return Home!", 185, 500); 
}


void gameoverwinClicks () { 
    if (dist(100, 300, 600, 600) < 600) {
    mode=INTRO;
  }
}




void gameoverlose () { 
    background(255);
  PImage frame= gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n>49) n=0;
  fill (255);
  
   textFont (font); 
    textSize (100);
    text ("YOU LOST!", 150, 230); 

  
    textFont (font); 
    textSize (50);
    text ("Click to Return Home!", 185, 500); 
  
}


void gameoverloseClicks () {
    if (dist(100, 300, 600, 600) < 600) {
    mode=INTRO;
  }
}
