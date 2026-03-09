int bulletX;  
int counter;  
int smokeY; 

void setup() {  
  size(1250, 1000);  
  bulletX = 0;  
  counter = 0;  
}  

void draw() {  
  background(#848884);  
  //ground color  
  noStroke();  
  fill(#957659);  
  rect(-1000, 520, 10000, 10000);    

  //bullets  
  bullet(bulletX, 532);  
  bulletX = bulletX - 40; //bullet movement and speed 
  if (bulletX < -100) {  
    bulletX = 800;  
  }     

  //smoke 
  smoke(900, smokeY); 
  smoke(500, smokeY); 
  smoke(200, smokeY); 
  smokeY = smokeY - 1; 
  if (smokeY < -300) { 
    smokeY = 150; 
} 
  //blood 
  fill(#bb0a1e); 
  noStroke(); 
  ellipse(110, 600, 80, 60); 
  ellipse(150, 750, 200, 160); 
  pushMatrix(); 
  rotate(radians(-18)); 
  ellipse(0, 711, 288, 311); 
  popMatrix(); 
  ellipse(100, 900, 188, 188); 

  //soldier on the left side 
  soldierL(0, 0);  
  soldierL(88, 300); 
  soldierL(150, 200); 
  soldierL(50, 100); 
  
  //tank
  tank(150, -25); 
}  

//=====================================================================================  

void bullet(int x, int y) {  
  pushMatrix();  
  translate(x, y);  
  fill(#595F13);  
  ellipse(0, 0, 30, 7.8);  
  popMatrix();  
}  

void soldierL(int x, int y) {  
  pushMatrix(); 
  translate(x, y); 
  fill(0);  
  //body  
  ellipse(50, 450, 88, 88);  
  rect(20, 488, 60, 150);  

  //gun  
  rect(50, 492, 100, 15);  
  rect(150, 492, 50, 8);  
  triangle(50, 500, 50, 550, 108, 500); 
  
  //flashing bullet effect  
  counter = counter + 1;  
  if (counter < 10) {  
  ellipse(200, 496, 8, 8);  
  }  

  if(counter < 10) {  
    fill(180);  
    ellipse(200, 496, 8, 8);  

  }  

  if(counter == 20) {  
    counter = 0; }  
popMatrix(); 
} 

void tank(int x, int y) { 
  translate(x, y); 
  
  // tank bottom 
  fill(#53543A); 
  triangle(1000, 700, 1070, 650, 1000, 650);  
  rect(800, 650, 200, 50); 
  triangle(730, 650, 800, 650, 800, 700); 
  strokeWeight(4); 
  stroke(#919187); 

//outlines
  line(730, 650, 1070, 650); 
  line(730, 650, 800, 700); 
  line(1070, 650, 1000, 700); 
  line(800, 700, 1000, 700); 

  stroke(0); 
  strokeWeight(1.8); 

  //tank wheels 
  fill(#87904E); 
  ellipse(820, 675, 42, 42); 
  ellipse(870, 675, 42, 42); 
  ellipse(920, 675, 42, 42); 
  ellipse(970, 675, 42, 42); 
  ellipse(778, 665, 22, 22); 
  ellipse(1015, 665, 22, 22); 

  fill(#5C6025); 
  ellipse(820, 675, 25, 25); 
  ellipse(870, 675, 25, 25); 
  ellipse(920, 675, 25, 25); 
  ellipse(970, 675, 25, 25); 
  ellipse(778, 665, 12, 12); 
  ellipse(1015, 665, 12, 12); 

  // tank middle 
  rect(730, 628, 340, 20); 
  noStroke(); 
  rect(800, 606, 170, 21); 
  triangle(800, 606, 800, 627, 750, 627); 
  stroke(0); 
  rect(967, 592, 88, 35, 10, 10, 10, 10); 
  line(990, 592, 990, 627); 
  line(1030, 592, 1030, 627); 
  line(967, 606, 800, 606); 
  line(800, 606, 750, 627); 

  // top of tank 
  rect(840, 595, 110, 11); 
  rect(650, 550, 175, 15); 
  rect(610, 547, 50, 22, 8, 8, 8, 8); 
  ellipse(800, 558, 19, 50); 
  rect(800, 515, 180, 80, 50, 50, 15, 15); 
  rect(865, 500, 50, 15, 5, 5, 5, 5); 

} 

void smoke(int x, int y) { 
  pushMatrix(); 
  translate(x, y); 
  noStroke(); 
  fill(120, 120, 120, 120);  

  ellipse(0, 300, 200, 200); 
  ellipse(188, 250, 188, 188); 
  ellipse(300, 200, 150, 150); 
  ellipse(400, 350, 100, 100); 
  popMatrix(); 
} 
