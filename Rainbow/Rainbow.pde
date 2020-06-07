void setup(){
  size(800,450);
}

void draw(){
  float backgroundColor = 0;
  background(backgroundColor);
  
  // program title
  fill(255);
  textSize(25);
  text("The R A I N B O W",width/2-120,30);
  
  // underline the text
  stroke(255);
  line(width/2-120,35,width/2+98,35);
  
  stroke(0); // no outline for the ellipses
  // red circle
  fill(255,0,0);
  ellipse(width/2,height,800,800);
  
  // orange circle
  fill(255,165,0);
  ellipse(width/2,height,700,700);
  
  // yellow circle
  fill(255,255,0);
  ellipse(width/2,height,600,600);
  
  // green circle
  fill(0,128,0);
  ellipse(width/2,height,500,500);
  
  // blue circle
  fill(0,0,255);
  ellipse(width/2,height,400,400);
  
  // indigo circle
  fill(75,0,130);
  ellipse(width/2,height,300,300);
  
  // violet circle
  fill(238,130,238);
  ellipse(width/2,height,200,200);
  
  // initial circle
  fill(backgroundColor);
  ellipse(width/2,height,100,100);
}
