void setup(){
  
  background(0);
  stroke(255);
  size(800,800,P2D);
  noFill();
  
}

void draw(){
  
  //Size of the rectangle
  float rectSize = 10;
  
  //Moves the grid zero (x and y) to the center of the screen
  translate(width /2, height / 2);
  
  //The fractal function
  fractal(rectSize);

}

void fractal(float rectSize){
  
  //Exit condition, so we don't run the fractal indefinitely
  if (rectSize < 500){

    //Draws the rectangle
    rect(0,0,rectSize,rectSize);
    
    //moves the x and y zeroes to the edge of the new rectangle...
    translate(rectSize,rectSize);
    
    //...and rotates the grid 90degrees
    rotate(PI * 1.5);

    //Multiplies the rectsize with phi, so the new rectangle
    //has a golden ratio to the old rectangle.
    rectSize = rectSize * 1.61803399;

    //
    fractal(rectSize);

  }
}
