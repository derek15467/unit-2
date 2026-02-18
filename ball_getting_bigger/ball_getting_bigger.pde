int x;

void setup() {
  size(300, 300);
  x = 0;
}

void draw() {
  background(255);
  ellipse(150, 150, x, x);
  x = x + 2; 
  if(x>400){
    x = 0;}
}
