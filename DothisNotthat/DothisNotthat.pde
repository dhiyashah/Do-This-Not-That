//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
//
void setup() 
{
  //Display Geometry
  fullScreen();
  println(width, height, displayWidth, displayHeight);
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  String ls="Landscape or Square", p="portrait", DO="DisplayOrientation", instruct="Bruhh, turn your phone";
  String orientation = ( appWidth >= appHeight ) ? ls : p ; //Ternary Operator
  println (DO, orientation );
  if (orientation==ls) {
    println("Good to go");
  } else { //Break app if not landscape
    println(instruct);
    appWidth = appWidth*0;
    appHeight = appHeight*0;
  }
  println("App Geometry is:", "\tApp Width:", appWidth, "\t\tApp Height:", appHeight);
  //
  //Population
  buttonX1 = appWidth*1/4;
  buttonY1 = appHeight*3/4;
  buttonWidth1 = appWidth*1/5;
  buttonHeight1 = appHeight*1/5;
  buttonX2 = appWidth*3/4;
  buttonY2 = buttonY1;
  buttonWidth2 = buttonWidth1;
  buttonHeight2 = buttonHeight1;
  rectDisplayX = appWidth*1/8;
  rectDisplayY = appHeight*1/8;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight = buttonWidth1;
  ellipseX = appWidth*6/8;
  ellipseY = rectDisplayY;
  ellipseXDiameter = appWidth*1/8;
  ellipseYDiameter = appHeight*1/8;
  float ellipseRectXCenter = ellipseX + ellipseXDiameter*1/2;
  float ellipseRectYCenter = ellipseY + ellipseYDiameter*1/2;
  x = ellipseRectXCenter;
  y = ellipseRectYCenter;
  xDiameter = ellipseXDiameter;
  yDiameter = ellipseYDiameter;
}//End setup
//
void draw() 
{
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Click Me"
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); //DIV: "Or Me"
  rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Circle
  ellipse(x, y, xDiameter, yDiameter);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//END MAIN
