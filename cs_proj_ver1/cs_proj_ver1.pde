int stage;
int life;
int totalcount;
boolean gameover;
int storycount = 0;
boolean firsttimeplay = true;
int stagecount1, stagecount2;

void setup() {
  //image
  size(1344, 740);
  jetImg = loadImage("jet.png");
  shotImg = loadImage("shot.png");
  boomImg = loadImage("boom.png");
  bossImg = loadImage("boss.png");
  spaceImg = loadImage("space.png");
  storyImg1 = loadImage("storyscene1.png");
  storyImg2 = loadImage("storyscene2.png");
  storyImg3 = loadImage("storyscene3.png");
  startbutton = loadImage("startbutton.png");
  startImg = loadImage("startscene.png");

  //time count
  totalcount = 0;
  stagecount1 = -180;
  stagecount2 = -180;
  militarypower =30;

  //background
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  //robot
  for (int i=0; i<robottotal; i++) {
    imgRobot[i]=loadImage("robot"+i+".png"); 
    dx[i] =random(-2,2);
    dy[i] =1;
    rx[i] =random(0, width);
    ry[i] =0;
    rz[i] =random(-5, -2);
  }

  //count
  life=3;
  int militarypower = robottotal;
  float bosshp = 30;
  gameover = false;

  //1=mouse -1=keyboard
  //controlmode=1;

  //firsttimeplay check
  if (firsttimeplay==true) {
    stage=0;
  } else {
    stage=1;
  }
}

void draw() {

  if (life==0) {
    stage=5;
  } 
  if (stage==0) {
    storyscene();
  } else if (stage==1) {
    firsttimeplay = false;
    startscene();
  } else if (stage==2) {
    starbackground();
    stagecount1 = stagecount1 +1;
    if (stagecount1/60<=0) {
      textSize(80);
      text("GAME start in "+stagecount1/-60, 250, height/2);
    } else {
      totalcount = totalcount +1;
      jet();
      robots();
      shot();
      checkshotrobot();
      checkmp();
      checklife();
      robottext();
    }
  } else if (stage==3) {
    starbackground();
    stagecount2 = stagecount2 +1;
    jet();
    shot();
    robots();
    checkshotrobot();
    checklife();
    if (stagecount2/60<=0) {
      textSize(80);
      text("Boss Appear in: "+stagecount2/-60+"s", 250, height/2);
    } else {
      totalcount = totalcount +1;
      boss();
      checkshotboss();
      checkbosshp();
      bosstext();
    }
  } else if (stage==4) {
    winscene();
    gameover=true;
  } else if (stage==5) {
    losescene();
    gameover=true;
  }
}

