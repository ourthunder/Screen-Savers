// declare X and Y coordinates of ellipses
float redX, redY;
float orangeX, orangeY;
float yellowX, yellowY;
float greenX, greenY;
float blueX, blueY;
float indigoX, indigoY;
float violetX, violetY;
float initX, initY;

// declare diameters of ellipses
float redDiameter;
float orangeDiameter; 
float yellowDiameter;
float greenDiameter; 
float blueDiameter; 
float indigoDiameter; 
float violetDiameter;
float initDiameter;

// declare radii of ellipses
float redRadius;
float orangeRadius;
float yellowRadius;
float greenRadius;
float blueRadius;
float indigoRadius;
float violetRadius;
float initRadius;

void setup(){
  fullScreen();
  
  // initialize X coordinates
  redX    = width/2;
  orangeX = width/2;
  yellowX = width/2;
  greenX  = width/2;
  blueX   = width/2;
  indigoX = width/2;
  violetX = width/2;
  initX = width/2;
  
  // initialize Y coordinates
  redY    = height;
  orangeY = height;
  yellowY = height;
  greenY  = height;
  blueY   = height;
  indigoY = height;
  violetY = height;
  initY   = height;  
  
  // initialize diameters
  redDiameter    = 800;
  orangeDiameter = 700;
  yellowDiameter = 600;
  greenDiameter  = 500; 
  blueDiameter   = 400; 
  indigoDiameter = 300; 
  violetDiameter = 200;
  initDiameter   = 100;
  
  // initialize radii
  redRadius       = redDiameter/2;
  orangeRadius = orangeDiameter/2;
  yellowRadius = yellowDiameter/2;
  greenRadius   = greenDiameter/2;
  blueRadius     = blueDiameter/2;
  indigoRadius = indigoDiameter/2;
  violetRadius = violetDiameter/2;
  initRadius     = initDiameter/2;
}

void draw(){
  float backgroundColor = 0;
  background(backgroundColor);
  
  // red circle
  fill(255,0,0);
  ellipse(redX,redY,redDiameter,redDiameter);
  
  // orange circle
  fill(255,165,0);
  ellipse(orangeX,orangeY,orangeDiameter,orangeDiameter);
  
  // yellow circle
  fill(255,255,0);
  ellipse(yellowX,yellowY,yellowDiameter,yellowDiameter);
  
  // green circle
  fill(0,128,0);
  ellipse(greenX,greenY,greenDiameter,greenDiameter);
  
  // blue circle
  fill(0,0,255);
  ellipse(blueX,blueY,blueDiameter,blueDiameter);
  
  // indigo circle
  fill(75,0,130);
  ellipse(indigoX,indigoY,indigoDiameter,indigoDiameter);
  
  // violet circle
  fill(238,130,238);
  ellipse(violetX,violetY,violetDiameter,violetDiameter);
  
  // initial circle
  fill(backgroundColor);
  ellipse(initX,initY,initDiameter,initDiameter);
  
  // make the rainbow bigger
  redDiameter    += 5;
  orangeDiameter += 5; 
  yellowDiameter += 5;
  greenDiameter  += 5;
  blueDiameter   += 5;
  indigoDiameter += 5;
  violetDiameter += 5;
  initDiameter   += 5;
  
  // restart each ellipse from the center once it's bigger than the screen
  //recenterEllipses();

  
}

void recenterEllipses(){
  // recenter the red ellipse
  if(redDiameter>width){ // (redX-redRadius)<0 || (redX+redRadius)>width || (redY-redRadius)<0
    //redDiameter -= 5;
    redDiameter = 10;
    fill(255,0,0);
    ellipse(redX,redY,redDiameter,redDiameter);
    redDiameter += 5;
    
    textSize(random(20,22));
    text("Some Random Text",width/2,height/2); // random(width),random(height)
  }
  // recenter the orange ellipse
  if((orangeX+orangeRadius)>width){ // (orangeX-orangeRadius)<0 || (orangeX+orangeRadius)>width || (orangeY-orangeRadius)<0  
    //orangeDiameter -= 5;
    orangeDiameter = 50;
    fill(255,0,0);
    ellipse(orangeX,orangeY,orangeDiameter,orangeDiameter);
    orangeDiameter += 5;
  }
  // recenter the yellow ellipse
  // recenter the green ellipse
  // recenter the blue ellipse
  // recenter the indigo ellipse
  // recenter the violet ellipse
  
  // recenter the initial ellipse
  if((initX+initRadius)>width){ // (initX-initRadius)<0 || (initX+initRadius)>width || (initY-initRadius)<0  
    //initDiameter -= 5;
    initDiameter = 50;
    fill(255,0,0);
    ellipse(initX,initY,initDiameter,initDiameter);
    initDiameter += 5;
  }
  
  /*
  // program title
  fill(255);
  textSize(25);
  text("The R A I N B O W",width/2-120,30);
  
  // underline the text
  stroke(255);
  line(width/2-120,35,width/2+98,35);
  */
}
