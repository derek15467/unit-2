void setup() {
  size(1000, 1000);
}

void draw() {
  background(0);
  cyclops(cyclopsX, 0);
  cyclopsX = cyclopsX + 2;
  if (cyclopsX > 1000) {
    cyclopsX = -100; }
}

void cyclops(int x, int y) {
    translate(x, y);
    fill(#9807B9);
    ellipse(300, 500, 300, 300);
    fill(255);
    ellipse(300, 450, 130, 130);
    fill(#12B7CB);
    ellipse(300, 450, 30, 60);
    fill(#076A76);
    ellipse(300, 450, 17, 33);
  }
