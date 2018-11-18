int militarypower;

void checklife() {
  for (int i=0; i<robottotal; i++) {
    if (rx[i]+rw>=mouseX-jw/2 && rx[i]<=mouseX+jw/2 && ry[i]+rh>=jy && ry[i]<=jy+jh) {
      life = life-1;
      rx[i] =random(0, width);
      ry[i]=0;
    }
  }
}

void checkshotrobot() {
  for (int i=0; i<robottotal; i++)
  {
    for (int j=0; j<firedNum; j++) {
      if (shotx[j]+rw>=rx[i] && shotx[j]<=rx[i]+rw && shoty[j]+rh>=ry[i] && shoty[j] <= ry[i] + rw) {
        image(boomImg, rx[i], ry[i], rw, rh);
        shotx[j] = -1000;
        shoty[j] = -1000;
        rx[i] =random(0, width);
        ry[i]=0;
        militarypower = militarypower-1;
        
      }
    }
  }
}

void checkshotboss() {

  for (int j=0; j<firedNum; j++) {
    if (shotx[j]+bw>=bx && shotx[j]<=bx+bw && shoty[j]+bh>=by && shoty[j] <= by+bw) {
      bosshp = bosshp-1;
      shotx[j] = -1000;
      shoty[j] = -1000;
    }
  }
}

void checkmp() {
  if (militarypower<=0) {
    stage=3;
  }
}

void checkbosshp() {
  if (bosshp<=0) {
    stage=4;
  }
}

