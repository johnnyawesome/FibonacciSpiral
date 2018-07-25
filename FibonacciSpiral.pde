void setup(){
  
  background(0);
  stroke(255);
  size(800,800,P2D);
  noFill();
  
}

void draw(){
  
  float rectSize = 10;
  
  translate(width /2, height / 2);
  
  fractal(rectSize);

}

void fractal(float rectSize){
  
  if (rectSize < 500){

    rect(0,0,rectSize,rectSize);
    
    translate(rectSize,rectSize);
    rotate(PI * 1.5);

    rectSize = rectSize * 1.61803399;

        
    fractal(rectSize);


  }
 
  
}
