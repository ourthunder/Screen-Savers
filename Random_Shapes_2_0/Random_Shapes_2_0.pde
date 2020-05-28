/*
  This screen saver draws random ellipses, rectangles & lines
  on the screen while the background continues to be updated.
*/

float radius = 150;
float lineX = width/2;

void setup(){
  fullScreen();
}

void draw(){
  background(0);
  drawEllipses();
  drawLines();
  drawRects();
}

void drawEllipses(){
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(random(width),random(height),radius,radius);
}

void drawLines(){
  strokeWeight(10);
  stroke(random(255),random(255),random(255));
  line(random(width),0,random(width),height);
}

void drawRects(){
  noStroke();
  fill(random(255),random(255),random(255));
  rect(random(width),random(height),random(200),random(200));
}
