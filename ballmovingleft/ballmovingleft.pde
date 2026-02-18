int x;

void setup() {
  size(300, 300);
  x = 0;
}

void draw() {
 background(255);
 ellipse(x, 150, 50, 50);
 x = x - 2; 
  if(x<-100) {
    x = 400 ; }
}
