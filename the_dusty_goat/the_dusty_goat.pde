//Tower Defense Game dogs trying to steal cats food
//tia
//Programming 12

// ================ GLOBAL VARIABLES =================

final int INTRO    = 0;
final int PLAY     = 1;
final int BUILD    = 2;
final int GAMEOVER = 3;
final int MAP      = 4;

int mode;

//tower cost

int wave;
int lives;
int coins;
int mapp;

//Pallette
color white  = #ffffff;
color black  = #000000;
color lgreen = #606c38;
color dgreen = #283618;
color cream  = #fefae0;
color lbrown = #dda15e;
color dbrown = #bc6c25;

//Mouse & Keyboard interaction variables
boolean mouseReleased;
boolean wasPressed;

//Buttons
Button start, play, build, gun, towe, tow, map1, map2, back, end;


//Collections of objects
Node[]nodes,m1nodes,m2nodes;
ArrayList<Mob>mobs;
ArrayList<Tower>towers;
ArrayList<Aoe>aoe;
ArrayList<Bullet>bullets;
ArrayList<Snip>snips;

//Images and Gifs
PImage tower;
PImage logo;
PImage wood;
PImage  boo;
PImage tows;
PImage aoes;
PImage die;
PImage spa;
PImage go;
PImage bob;
PImage me;
PImage lbss;
PImage doot;
PImage beep;
Gif carrot;
//Fonts
PFont f;
PFont f2;

int s = 1;

// ===================== SETUP =========================

void setup() {
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  wave=0;
  coins=35;
  size(800, 600);
  initializeModes();
  initializeVariables();
  makeButtons();
  makeNodes();
  lives=5;
}

void initializeModes() {
  //set up the default mode for things
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  mode = INTRO;
}

void initializeVariables() {
  //Load Images & Gifs
  logo=loadImage("logo.png");
  tower=loadImage("bkg.jpeg");
  wood=loadImage("wood.png");
  boo=loadImage("123.jpg");
  tows=loadImage("boom.png");
  aoes=loadImage("bam.png");
  die=loadImage("images.png");
  spa=loadImage("alan.jpg");
  go=loadImage("go.png");
  me=loadImage("me.png");
  bob=loadImage("bob.png");
  lbss=loadImage("lbss.jpeg");
  beep=loadImage("beep.png");
  doot=loadImage("doot.png");
  carrot= new Gif("guy/frame_", "_delay-0.04s.gif", 46, 5, 328, 300, 100, 100);
  //Load Fonts
  f=createFont("mangat.ttf", 50);
  f2=createFont("Adventure.otf", 50);
  //Create Collections of Objects
  mobs=new ArrayList <Mob>();
  towers=new ArrayList <Tower>();
  bullets=new ArrayList <Bullet>();
  aoe=new ArrayList <Aoe>();
  snips=new ArrayList <Snip>();
  //test towers
}

void makeButtons() {
  //INTRO - Start
  textFont(f);
  start = new Button("START", width/3, height-155, 100, 50, lbrown, dbrown);

  //PLAY - Next Wave, To Build Mode
  play=new Button("Wave", 735, 100, 80, 50, lbrown, dbrown);
  build=new Button("build", 735, 200, 80, 50, lbrown, dbrown);
  gun=new Button("TOWER", 735, 275, 80, 50, lbrown, dbrown);
  towe=new Button("AOE", 735, 350, 80, 50, lbrown, dbrown);
  tow=new Button("SNIPER", 735, 425, 82, 50, lbrown, dbrown);
  map1=new Button("BOB", 200, 500, 82, 50, lbrown, dbrown);
  map2=new Button("hell", 500, 500, 82, 50, lbrown, dbrown);
  back=new Button("YEA no", 735, 500, 82, 50, lbrown, dbrown);
  end=new Button("again ", 400, 500, 82, 50, lbrown, dbrown);

  //BUILD - To play mode, Buy Sniper, Buy Gun, Buy AoE

  //GAMEOVER - Reset
}

void makeNodes() {
  //Plot the nodes on the map
  m1nodes=new Node[7];
  m1nodes[0]=new Node(100, 300, 1, 0);
  m1nodes[1]=new Node(300, 300, 0, -1);
  m1nodes[2]=new Node(300, 150, 1, 0);
  m1nodes[3]=new Node(400, 150, 0, 1);
  m1nodes[4]=new Node(400, 450, 1, 0);
  m1nodes[5]=new Node(600, 450, 0, -1);
  m1nodes[6]=new Node(600, 250, 1, 0);
  m2nodes=new Node[7];

  m2nodes[0]=new Node(100, 300, 1,0);
  m2nodes[1]=new Node(200, 300, 0, -1);
  m2nodes[2]=new Node(200, 100, 1, 0);
  m2nodes[3]=new Node(500,100, 0, 1);
  m2nodes[4]=new Node(500, 400, 1,0);
  m2nodes[5]=new Node(700, 400, 1, 0);
  m2nodes[6]=new Node(800, 400, 0 , 0);
}




// ===================== DRAW ===========================

void draw() {
  click();
  if (mode == INTRO) {
    intro();
  } else if (mode == PLAY) {
    play();
  } else if (mode == BUILD) {
    build();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == MAP) {
    mapp();
  }

}
