PImage bossImg;
int bw = 200;
int bh = 200;
float bx = width/2;
float by = 0;
float bspeed = 3;
int bosshp = 100;

void boss() {
  image(bossImg, bx, by, bw, bh);
  bx = bx + bspeed;
  if (bx<=0||bx>=width-bw) {
    bspeed = -bspeed;
  }
}

