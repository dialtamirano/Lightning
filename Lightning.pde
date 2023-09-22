int startX = (int)(Math.random()+200);
int startY= 550;
int endX = 400;
int endY = 550;

void setup()
{
  frameRate (4);
  size(500,500);
  background(30,30,60);
  
}
void draw(){
  //lightning
while (endX < 500) {
 int r = (int)(Math.random()*220)+200;
 int g = (int)(Math.random()*220)+180;
 int b = (int)(Math.random()*10)+180;
 stroke(r,g,b,200);
 strokeWeight(7);
 endX = (startX) + (int)(Math.random()*20-10);
 endY = (startY) + (int)(Math.random()*25);
 line(startX, startY, endX, endY); 
 startX = endX;
 startY = endY;
}
 //clouds
  noStroke();
  fill(200,200,200,30);
  ellipse(30,10,80,70);
  ellipse(90,30,100,80);
  ellipse(100,10,150,150);
  ellipse(200,30,100,80);
  ellipse(250,10,150,80);
  ellipse(375,30,150,120);
  ellipse(450,10,100,90);
 //ocean
  fill(30,30,100,200);
  rect(0, 400, 500, 150);
 //submarine body
  fill(0,0,0);
  ellipse(300,450,300,70);
 //submarine windows
  strokeWeight(2);
  stroke(150,150,150);
  fill(50,200,200);
  ellipse(200,450,30,30);
  ellipse(300,450,30,30);
  ellipse(400,450,30,30);
 //submarine lookout
  noStroke();
  fill(0,0,0);
  rect(250,350,20,80);
  fill(50,200,200);
  ellipse(240,360,30,30);
}
void mousePressed()
{
 startX = (int)(Math.random()*500);
 startY = 0;
 endX = 0;
 endY = 0;
}
