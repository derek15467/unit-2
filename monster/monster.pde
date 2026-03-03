int eyeX; 
int eyeAngle; 

void setup() { 
  size(1000, 1000, P2D); 
  eyeX = 0; 
}  

void draw() { 
  background(#231709);  
  eye(eyeX, 500, eyeAngle); 
  eyeX = eyeX + 8;  //movement command and speed 
  eyeAngle = eyeAngle + 5;  //rotation command speed 
  if (eyeX > 1200) {  //movement restrictions 
    eyeX = -200; }  
  sword(mouseX, mouseY);  //sword follows mouse 
}   
void eye (int x, int y, int angle) { //  
pushMatrix();  
  strokeWeight(2); 
  translate(x, y); 
  rotate(radians(angle)); 
  fill(#790C7C); 
  ellipse(0, 0, 200, 200);  //purple layer outside of eye 
  noStroke(); 
  fill(255); 
  ellipse(0, 0, 130, 130); //white part of eye 
  fill(#24B9B1); 
  ellipse(0, 0, 30, 100); //pupil 
  fill(#17716C); 
  ellipse(0, 0, 15, 67);  
popMatrix(); 
} 
void sword(int x, int y) { 
  pushMatrix(); 
  translate(x, y); 
  // blade 
  fill(200); 
  rect(-5, -60, 10, 60);    
  // handle 
  fill(100, 50, 0); 
  rect(-4, 0, 8, 20);   
  // cross guard 
  fill(150); 
  rect(-20, -5, 40, 5); 
  popMatrix(); 
} 
