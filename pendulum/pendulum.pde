float t = 0;
int cx = 300;
int cy = 300;
float r = 100;
float x;
float y;
int numFrames = 128;

void setup() {
  size (1000,600);
  background(0);
  frameRate(30);
}

void draw() {
    background(0);
   
    x = (cx + r*cos(PI*t/32));
    y = (cy + r*sin(PI*t/32));
    
   for (int i = 1; i < 5; i++) {
     
   color c1 = color(191 + 64*cos(t/64), 191 + 64*cos(t/64 + PI/2), 0);  // Define color 'c'
  fill(c1);  // Use color variable 'c' as fill color
  
   ellipse(300+i*200-300, y, 100, 100);
   
  color c2 = color(0, 191 + 64*sin(t/16 + PI/2), 191 + 64*sin(t/16));  // Define color 'c'
  fill(c2);  // Use color variable 'c' as fill color
   ellipse(x+i*200-300, 300, 100, 100);
   
   }
   t = t +1;
   
   
   
//  saveFrame("Pendulum###.gif");
//  if(frameCount == numFrames)
//    exit(); 
    
  print(t);

}

