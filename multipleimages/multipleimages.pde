//text
String title = "when the";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color red=#F23B3B, resetDefaultInk=#FFFFFF;
//
//populations
titleX = displayWidth*1/5;
titleY = displayHeight*0;
titleWidth = displayWidth*3/5;
titleHeight = displayHeight*1/10;
//
//fonts from os
//String[] fontList = PFont.list();
//printArray(fontList); //for listing all possible fonts to choose from
titleFont = createFont ("Comic Sans MS", 55); //verify the font exsists in console
//Tools/Create Font/Find Font/Do not press "OK", known bug
//
//layout our text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight);
//drawing text
fill(red); //ink hexidecimal copied from color selector
textAlign(CENTER, CENTER); //align x and y see processing.org / reference
//values: [ LEFT | CENTER | RIGHT ] and [ TOP | CENTER | BOTTOM | BASELINE ]
textFont(titleFont, 77); //change number till it fits
text(title, titleX, titleY, titleWidth, titleHeight);
fill(resetDefaultInk);
//
//variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
//geometry
//size(900,680);
fullScreen();//size(900,680);
//landscape presentation not portrait
//
//populating variables
pic1 = loadImage("obiwan.jpg"); //dimesions 860 x 822
pic2 = loadImage("bike.png"); //dimensions 1000 x 700
//
//aspect ratio
int pic1Width = 860;
int pic1Height = 822;
int pic2Width = 1000;
int pic2Height = 700;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
//
if (pic1Width >= pic1Height) {
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  widthPic1Larger = true;
} else {
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
  heightPic1Larger = true;
} //end pic1 larger dimension
//
if (pic2Width >= pic2Height) {
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic2Height;
  widthPic2Larger = true;
} else {
  largerPic2Dimension = pic2Height;
  smallerPic2Dimension = pic2Width;
  heightPic2Larger = true;
} //end pic2 larger dimension
println(largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension); //verify variable details
if (widthPic1Larger = true) imageWidthRatioPic1 = largerPic1Dimension / largerPic1Dimension;
if (widthPic1Larger = true) imageHeightRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
if (heightPic1Larger = true) imageWidthRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
if (heightPic1Larger = true) imageHeightRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
if (widthPic2Larger = true) imageWidthRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
if (widthPic2Larger = true) imageHeightRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
if (heightPic2Larger = true) imageWidthRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
if (heightPic2Larger = true) imageHeightRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); //verify variable details
//
// Use ratios to change the image width and height properties of Rectangle
// **See below to Specific Image Properties of Image and Rectangle Variables
//
rectXPic1 = width*1/16;
rectYPic1 = height*0;
rectWidthPic1 = width*1/2;
rectHeightPic1 = height*1/2;
rectXPic2 = width*1/8;
rectYPic2 = height*1/2;
rectWidthPic2 = width*6/8;
rectHeightPic2 = height*1/2;
//
// Final Aspect Ratio Calculations
float picWidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
picWidthAdjusted = rectWidthPic1*imageWidthRatioPic1;
pic1HeightAdjusted = rectHeightPic1*imageHeightRatioPic1;
pic2WidthAdjusted = rectWidthPic2*imageWidthRatioPic2;
pic2HeightAdjusted = rectHeightPic2*imageHeightRatioPic2;
println (pic1Width, pic1Height, pic2Width, pic2Height);
println (picWidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
//
//
//
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*1/10;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*6/8;
rectHeightPic2 = displayHeight*1/3;
//
//rect layout and image printing on canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //image 1 landscape
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //image 2 landscape
// image using rect() variables
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(pic2, rectXPic2, rectYPic2+(rectYPic2*1/5), rectWidthPic2, rectHeightPic2);
