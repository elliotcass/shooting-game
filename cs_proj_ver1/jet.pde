PImage jetImg;
PImage shotImg;
PImage boomImg;
float jy = 740-50;
//float jx = mouseX - jw/2;
int jw = 50;
int jh = 50;

int shottotal = 20;
int firedNum =0;
float[] shotx = new float[shottotal];
float[] shoty = new float[shottotal];
float shotz = 5;

void jet() {
  image(jetImg,mouseX - jw/2, jy, jw, jh);
}

void shot() {
  for (int i=0; i<firedNum; i++) {
    image(shotImg, shotx[i], shoty[i], jw, jh);
    shoty[i] = shoty[i] - shotz;
  }
}

