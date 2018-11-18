Star[] stars  = new Star[5000];

class Star {
  float x;
  float y; 
  float z;

  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
  }

  void update() {
    z=z-5;
    if (z<1) {
      z = random(width);
    }
  }

  void show() {
    fill(255);
    noStroke();

    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    float r =map(z, 0, width, 8, 0);
    ellipse(sx, sy, r, r);
  }
}

void starbackground() {
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  popMatrix();
}

