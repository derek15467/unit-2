int bulletX; 
int counter; 

void setup() { 
  size(1200, 1000); 
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
  bullet(bulletX, 496); 

  
  bulletX = bulletX + 40; //bullet movement and speed
  if (bulletX > 1100) { 
    bulletX = 200; 
  }    
  //soldier on the left side
  soldierL(0, 0); 
  soldierL(88, 300);
  soldierL(150, 200);
  soldierL(50, 100);
  
  //tank
  
  fill(0);
  triangle(900, 700, 970, 650, 900, 650);
  

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


    
