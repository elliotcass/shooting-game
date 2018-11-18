PImage spaceImg;
PImage startImg;
PImage storyImg1;
PImage storyImg2;
PImage storyImg3;
PImage startbutton;
float startbuttonx = 550;
float startbuttony = 500;
float startbuttonw = 300;
float startbuttonh = 100;

void storyscene() {
  storycount = storycount +1;
  if (storycount/60 < 3) {
    image(storyImg1, 0, 0);
  } else if (storycount/60 < 6) {
    image(storyImg2, 0, 0);
  } else if (storycount/60 < 9) {
    image(storyImg3, 0, 0);
  } else if (storycount/60==12) {
    stage=1;
  }
}

void startscene() {
  image(startImg, 0, 0, width, height);
  image(startbutton, startbuttonx, startbuttony, startbuttonw, startbuttonh);
  fill(255, 0, 0);
  textSize(50);
}

void losescene() {
  image(spaceImg, 0, 0, width, height);
  fill(255, 0, 0);
  textSize(50);
  text("Your Lose!", 400, 400);
  text("Play Time:"+totalcount/60+"s", 400, 450);
  text("Press R to restart", 400, 500);
}

void winscene() {
  image(spaceImg, 0, 0, width, height);
  fill(0, 255, 0);
  textSize(50);
  text("Your Win!", 400, 400);
  text("Play Time:"+totalcount/60+"s", 400, 450);
  text("Stage1 Time:"+stagecount1/60+"s",400,500);
  text("Stage2 Time:"+stagecount2/60+"s",400,550);
  text("Press R to restart", 400, 600);
}

void commonstatus() {
  textSize(30);
  fill(0, 255, 0);
  text("Life:"+life, 0, 30);
  text("Time:"+totalcount/60+"s", 0, 60);
  if (firedNum < shottotal) {
    text("Load:"+ (shottotal-firedNum), 0, 90);
  } else {
    fill(255, 0, 0);
    text("Press spacebar to Reload Now!", 0, 90);
  }
}

void robottext() {
  commonstatus();
  textSize(30);
  fill(255, 0, 0);
  text("Militarypower:", 200, 30);
  rect(420, 0, militarypower*5, 30);
}

void bosstext() {
  commonstatus();
  textSize(30);
  fill(random(255), random(255), random(255));
  rect(bx, by+bh, bosshp*2, 30);
}

