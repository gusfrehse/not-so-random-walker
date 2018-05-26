class Walker {
  int x;
  int y;
  int pX;
  int pY;
  int pix;
  int dir;

  Walker(int tempX, int tempY) {
    x = tempX;
    y = tempY;
    pX = tempX;
    pY = tempY;
    pix = x + y * width;
    dir = 1;
  }
  void display() {
    //print("x: " + x);
    //print("y: " + y);
    //print("pix: " + pix);
    pixels[pix] = color(0);
  }

  boolean isPopulated(int __x, int __y) {
    if (pixels[ __x + __y * width ] == color(0)) { 
      return true;
    } else {
      return false;
    }
  }

  //directions: right = 0/up = 1/left = 2/down = 3
  void walk(int dir1, int mod1, int dir2, int mod2) {
    print(isPopulated(x, y)+"\n");
    if (isPopulated(x, y) == false) {
      if (dir1 == 0) {
        pX = x;
        pY = y;
        x += mod1;
        x = x % width;
        for (int i = 0; i < mod1; i++) {
          pixels[(pX + i) + pY * width] = color(0);
        }
      } else if (dir1 == 1) {
        pY = y;
        pX = x;
        y -= mod1;
        y = y % width;
        for (int i = 0; i < mod1; i++) {
          pixels[pX + (pY + i) * width] = color(0);
        }
      } else if (dir1 == 2) {
        pX = x;
        pY = y;
        x -= mod1;
        x = x % width;
        for (int i = 0; i < mod1; i++) {
          pixels[(pX - i) + pY * width] = color(0);
        }
      } else if (dir1 == 3) {
        pY = y;
        pX = x;
        y += mod1;
        y = y % width;
        for (int i = 0; i < mod1; i++) {
          pixels[pX + (pY - i) * width] = color(0);
        }
      }
    } else {
      if (dir2 == 0) {
        pX = x;
        pY = y;
        x += mod2;
        x = x % width;
        for (int i = 0; i < mod2; i++) {
          pixels[(pX + i) + pY * width] = color(0);
        }
      } else if (dir2 == 1) {
        pY = y;
        pX = x;
        y -= mod2;
        y = y % width;
        for (int i = 0; i < mod2; i++) {
          pixels[pX + (pY + i) * width] = color(0);
        }
      } else if (dir2 == 2) {
        pX = x;
        pY = y;
        x -= mod2;
        x = x % width;
        for (int i = 0; i < mod2; i++) {
          pixels[(pX - i) + pY * width] = color(0);
        }
      } else if (dir2 == 3) {
        pY = y;
        pX = x;
        y += mod2;
        y = y % width;
        for (int i = 0; i < mod2; i++) {
          pixels[pX + (pY - i) * width] = color(0);
        }
      }
    }
  }
}
