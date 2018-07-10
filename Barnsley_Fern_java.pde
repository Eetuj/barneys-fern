//  Christmas tree implication of fractal known as Barnsley fern      //
//  Slighty modified code of a man's known shiffman :)                //
//  Original matrix is modified to resemble Thelypteridaceae fern     //
//  X and Y -ranges are kept original (commented on the actual code)  //

float x = 0;
float y = 0;
float nX;
float nY;
float px;
float py;

void setup() {
  size(800, 800);
  background (0);
}


// New point //

void nP() {
  
  float random = random(1);

  if (random < 0.02) {
    
  // 0,  0,  0,  0.25,  0,  −0.4,  0.02 //
  
  nX =  0;
  nY =  0.25 * y + -0.4;
  
  } else if (random < 0.86) {
    
  // 0.95,  0.005,  −0.005,  0.93,  −0.002,  0.5, 0.84 //
  
  nX =  0.95 * x + 0.005 * y + -0.002;
  nY = -0.005 * x + 0.93 * y + 0.5;
  
  } else if (random < 0.93) {
    
  // 0.035  −0.2  0.16  0.04  −0.09  0.02  0.07 //
  
  nX =  0.035 * x + -0.20 * y + -0.09;
  nY =  0.16 * x + 0.04 * y + 0.02;
  
  } else {
    
  // −0.04,  0.2,  0.16,  0.04,  0.083,  0.12,  0.07 //
  
  nX = -0.04 * x + 0.20 * y + 0.083;
  nY =  0.16 * x + 0.04 * y + 0.12;
  
  }
  
  x = nX;
  y = nY;

}


// Draw point //

void dP() {
  
  stroke(random(255), random(255), random(255));
  strokeWeight(2);
  
  // -2.1820 < x < 2.6558 //
  // 0 <= y < 9.9983 //
  
  px = map(x, -2.1820, 2.6558, 0, width);
  py = map(y, 0, 9.9983, height, 0);
  point(px, py);
  
}

void draw() {
  
  // add an optional for-loop for faster rendering //
  for (int i = 0; i < 100; i++) {
  dP();
  nP();
  }
  
}
