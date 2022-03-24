//global variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0; 
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
color red=#E50E27;
//
void setup()
{
  fullScreen();
  //size(900, 680);
  //landscape Presentation
  //
  populatingVariables();
  //
  imageDraw();
}//End setup
//
void draw()
{ //Note: DRAW Loop repeats 60 times / second, static images should be in SETUP, "system resourses"

}//End draw
//
void keyPressed()
{
}//End keypressed
//
void mousePressed()
{
}//End mousePressed
