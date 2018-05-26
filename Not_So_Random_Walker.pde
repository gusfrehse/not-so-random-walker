Walker w;
//make him turn to a direction
void setup() {
  size(400, 400);
  background(255);
  w = new Walker(width/2, height/2);
  loadPixels();
  for (int i = 0; i < pixels.length; i++) {
    pixels[i] = color(255);
  }
  //w.display();
  updatePixels();
}

void draw() {
  frameRate(60);
  loadPixels();
  w.walk(0, 1, 3, 1);
  updatePixels();
}
