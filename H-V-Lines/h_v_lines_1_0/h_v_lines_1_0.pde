/*
  This is my first screen-saver developed with Processing.
  I named this h-v-lines because I only used 1 horizontal 
  and vertical line to make the screen saver.
  This 1st one is officially called h-v-lines-1.0
*/

// horizontal line variables
int hx1 = 0;
int hy1 = 0;
int hy2 = 0;
int hs = 10;

// vertical line variables
int vx1 = 0;
int vy1 = 0;
int vx2 = 0;
int vs = 10;

void setup(){
  fullScreen();
}

void draw(){
  background(0);
  horizontalLine();
  verticalLine();
}

void horizontalLine(){
  strokeWeight(5);
  stroke(random(255),random(255),random(255));
  line(hx1,hy1,width,hy2);
  hy1 += hs;
  hy2 += hs;
  if(hy1 > height && hy2 > height){
    hy1 = 0;
    hy2 = 0;
    stroke(255);
    line(hx1,hy1,width,hy2);
    hy1 += hs;
    hy2 += hs;
  }
}

void verticalLine(){
  strokeWeight(5);
  stroke(random(255),random(255),random(255));
  line(vx1,vy1,vx2,height);
  vx1 += vs;
  vx2 += vs;
  if (vx1 > width && vx2 > width){
    vx1 = 0;
    vx2 = 0;
    stroke(random(255),random(255),random(255));
    line(vx1,vy1,vx2,height);
    vx1 += vs;
    vx2 += vs;
  }
}
