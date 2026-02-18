int x;
int y;


void setup() {
  size(300, 300);
  x = -50;
  y = 350;
}

void draw() {
 background(255);
 ellipse(50, x, 50, 50);
 ellipse(200, y, 50, 50);
 x = x + 1; 
 y = y - 1;
  if(x>400) {
  x = -100;
  y = 400;
 }
}
