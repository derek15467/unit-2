int bulletX;

void setup() {
  size(1000, 1000);
  bulletX = 0;
  
}


void draw() {
  background(255);
  
  fill(0);
  rect(0, 640, 10000, 500);
  
  
  bullet(bulletX, 500);
  bulletX = bulletX + 40;
  if (bulletX > 1100) {
    bulletX = -100;
  } 
}

void bullet(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(#595F13);
  ellipse(0, 0, 40, 10);
  popMatrix();
}
