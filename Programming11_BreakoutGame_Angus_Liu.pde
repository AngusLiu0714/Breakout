//Breakout Game 
//Angus Liu 

// ASK Mr. Pelletier; 


//GAMEOVER
// music
//reset


PImage [] gif; 
int numberOfFrames; 

//MODE Variables
int mode; 
final int INTRO =1;
final int GAME =2; 
final int PAUSE =3; 
final int GAMEOVERWIN =4;
final int GAMEOVERLOSE=5;

//INTRO gui 
float a; 

//Game entities
float bx, by, bd, vx, vy, px, py, pd;

//keyboard variables
boolean akey, dkey; 

ArrayList<PImage> gif;



//Brick Variables
int [] x; 
int [] y; 
int brickd;
boolean [] alive; 
int n; 
int tempx, tempy;
int b;

int score, lives, highscore; //also a target variable
int n1;

//Font 
PFont font;

//Image
PImage  image;
void setup () { 
  size (800, 630);
  noStroke (); 
  mode= INTRO; 
  //setup paddle and ball 
  bx= width/2;
  by= height -200; 
  bd= 10; 
  px= width/2; 
  py= height; 
  pd= 100; 
  vx= 0; 
  vy= 1;
  score= 0; 
  lives= 3;
  int i=0;
  
 font= createFont ("Wash Your Hand.ttf", 45); 
 image= loadImage ("b1ae707222c7840df56a0fdf6c5c686c.jpg");



   brickd= 80; 
  n=0;

 
  
 // alive new boolean [n] =true;
  n1= 15;
  alive = new boolean [n1] ;
  x= new int [n1];
  y= new int [n1];

tempx= 100;
tempy= 100;

  while ( i < n1) { 
    x [i] = tempx; 
    y[i] = tempy;
    alive [i] = true;
       i= i+1;
    tempx= tempx +140; 
    if (tempx ==width ) { 
       tempx= 100;
      tempy= tempy+ 110; 
      
    }

  }


    numberOfFrames= 50; 
  gif= newPImage [numberOfFrames]  ; 
  int i= 0;
  while ( i < numberOfFrames) { 
    gif [i] = loadImage ( "frame_00_delay-0.03s.gif"); 
    i++;
  }
}


void draw () { 
  if (mode ==INTRO) { 
    intro ();
  } else if (mode==GAME) { 
    game ();
  } else if ( mode==PAUSE) { 
    pause ();
  } else if (mode ==GAMEOVERWIN) {
    gameoverwin ();
  }else if (mode== GAMEOVERLOSE) { 
    gameoverlose ();
  } else { 
    println ( "MODE ERROR in draw: " +mode );

  }
    println (mouseX, mouseY);
}
