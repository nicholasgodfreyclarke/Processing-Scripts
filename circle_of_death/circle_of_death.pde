float t = 0;
float cx = 150;
float cy = 300;
float r = 200;
float diameter = 100;
int number = 5;
float central_x_rotation;
float central_y_rotation;
float outer_x_rotation;
float outer_y_rotation;
float outer2_x_rotation;
float outer2_y_rotation;
int numFrames = 128;

void setup() {
  size (600, 600);
  background(0);
  frameRate(15);
}

void draw() {
  background(255);
  
  
  fill(color(0));  // Use color variable 'c' as fill color
  ellipse(300, 300, diameter*3, diameter*3);
  
  for (int i = 1; i <= number; i++) {
    
    central_x_rotation = r*cos(PI*t/64+2*PI*i/number);
    central_y_rotation = r*sin(PI*t/64+2*PI*i/number);
    
    fill(color(31));
    ellipse(150+cx +central_x_rotation, cy + central_y_rotation, diameter, diameter);
    
      for (int j = 1; j <= number; j++) {
        
      outer_x_rotation = diameter/2*cos(PI*t/32+2*PI*j/number);
      outer_y_rotation = diameter/2*sin(PI*t/32+2*PI*j/number);
      
      fill(color(63));
      ellipse(150+cx + central_x_rotation+outer_x_rotation, cy + central_y_rotation+outer_y_rotation, diameter/3, diameter/3);
    
        for (int k = 1; k <= number; k++) {
          outer2_x_rotation = diameter/4*cos(PI*t/16+2*PI*k/number);
          outer2_y_rotation = diameter/4*sin(PI*t/16+2*PI*k/number);
          
          fill(color(127));
          ellipse(150+cx + central_x_rotation+outer_x_rotation+outer2_x_rotation, cy + central_y_rotation+outer_y_rotation+outer2_y_rotation, diameter/9, diameter/9);
      
        }
    }
  }
  
  t = t +1;
  
  saveFrame("CirleOfDeath###.gif");
  if(frameCount == numFrames)
    exit(); 
    
  print(t);
}

