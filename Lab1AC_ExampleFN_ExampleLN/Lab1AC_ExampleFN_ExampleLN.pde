/* Lab 1C
Katarina Hoeger
Color & Size changing ellipse example 
- contains scalars
- contains global variables
- examples of float vs. int
*/

//global variables
float radScalar = 0.9;   // radius scalar
int startRad = 1500;      // starting radius
int rad = startRad;       // current radius
int rVal = 255;           // colors
int gVal = 255;
int bVal = 255;
int alph = 200;
int deltaB = 10;          // change in blue value
int bReset = 255;          // reset blue to

void setup(){
  // canvas size & color
  size(1000,1000);
  background(0,0,0);
  
  // global settings
  noStroke();
  ellipseMode(CENTER);
}

void draw(){
  // draw circle
  fill(rVal, gVal, bVal, alph);
  ellipse( mouseX, height/2, rad, pow(rad,radScalar));
  // decrease radius
  if (rad > width/100){
    rad *= radScalar;
  }
  else
  {
    rad = startRad;
  }
  // change bVal
  if (bVal >0){
    bVal -= deltaB;
  }
  else {
    bVal = bReset;
  }
}
