int robottotal  = 10;
PImage[] imgRobot = new PImage[robottotal];
float [] rx = new float[robottotal];
float [] ry = new float[robottotal];
float [] rz = new float[robottotal];
float [] dx = new float[robottotal];
float [] dy = new float[robottotal];
int rh=50;
int rw=50;

void robots() {
  for (int i=0; i<robottotal; i++) {
    image(imgRobot[i], rx[i], ry[i], rw, rh);
    rx[i]=rx[i]-(dx[i]*rz[i]);
    ry[i]=ry[i]-(dy[i]*rz[i]);
    if (rx[i]<=0 || rx[i]+rw>=width){
    dx[i]=-dx[i]; }
    if(dx[i]==0){
    dx[i] =random(-2,2);
    }
   
    if (ry[i]>=740) {
      rx[i] =random(0, width);
      ry[i]=0;
    }
  }
}

