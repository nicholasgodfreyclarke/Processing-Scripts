float t = 0;
float initial_size = 400;
int numFrames = 134;

void setup() {
  size(500,500);
  frameRate(30);
}

void draw() {
  background(255);
  
  for (int i = 1; i<=40; i++) {
  
  stroke(color(255-(i%2)*255));
  fill(color(255-(i%2)*255));

  //Top left
  rect(-100*i-t/2,-100*i+0-t/2,initial_size+t,initial_size+t);
  //Top right
  rect(100*i +100 -t/2,-100*i+0-t/2,initial_size+t,initial_size+t);
  //Bottom left
  rect(-100*i -t/2,100*i+100-t/2,initial_size+t,initial_size+t);
  //Bottom right
  rect(100*i +100 -t/2,100*i+100-t/2,initial_size+t,initial_size+t);

  }
//  noLoop();
  t = t +3;
  
  saveFrame("ConvergingSquares###.gif");
  if(frameCount == numFrames)
    exit(); 
}
