void keyPressed () {
  if (keyCode ==   RIGHT) dkey=true;
  if (keyCode == LEFT) akey=true;
}

void keyReleased () {
  if (keyCode ==   RIGHT) dkey=false;
  if (keyCode == LEFT)  akey=false;
}


 void mouseReleased () {
  if (mode == INTRO) {
    introClicks ();
  } else if ( mode == GAME) { 
    gameClicks ();
  } else if (mode== PAUSE) {
    pauseClicks();
  } else if ( mode== GAMEOVERWIN) { 
    gameoverwinClicks ();
  }else if (mode== GAMEOVERLOSE) { 
    gameoverloseClicks ();
  } else { 
    println ("Error: Mode= " + mode);
  }
} ///////////////////////////end of void mouseReleased\
