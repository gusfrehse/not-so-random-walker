class Walker {
  int x;
  int y;
  int pX;
  int pY;
  float dir = 1; //right = 0/up = 1/left = 2/right = 3
  int pix = x + y * width;

  Walker(int tempX, int tempY) {
    x = tempX;
    y = tempY;
    pX = tempX;
    pY = tempY;
  }
  void display() {
    //loadPixels();
    //pixels[pix] = color(0);
    //updatePixels();
    line(pX, pY, x, y);
  }
  void walk(int dir1, int mod1) {
    if (dir1 == 0) {
      pX = x;
      pY = y;
      x += mod1;
    } else if (dir1 == 1) {
      pY = y;
      pX = x;
      y += mod1;
    } else if (dir1 == 2) {
      pX = x;
      pY = y;
      x -= mod1;
    } else if (dir1 == 3) {
      pY = y;
      pX = x;
      y -= mod1;
    }


  }
}
