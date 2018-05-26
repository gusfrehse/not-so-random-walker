Walker w;
//ele anda e canvas é inicializado, mas precisa de um jeito de marcar onde ele ja andou pelo canvas


int canvas[][];

void setup() {
  size(100, 100);
  background(255);
  print("po");
  canvas = new int[width][height];
  w = new Walker(width/2,height/2);
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
    canvas[x][y] = 255;
    }
  }
}

void draw(){
  w.display();
  w.walk(2,1);
}
