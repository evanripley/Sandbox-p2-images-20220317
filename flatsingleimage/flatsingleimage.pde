//global variables
//
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger = false;
//
size(600,300);
//fullScreen(); //size(600,300);
//populations
int picWidth = 120;
int picHeight = 120;
if (picWidth >= picHeight) {
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else {
  largerDimension = picHeight;
  smallerDimension = picWidth;
} //end dimensions
println(smallerDimension, largerDimension, widthLarger); //verifying variable details
if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
if (widthLarger == true) imageWidthRatio = smallerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio, smallerDimension/largerDimension, 120/120); //verify variable values
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth*imageWidthRatio;
imageHeight = displayHeight*imageHeightRatio;
//if (imageWidth >= displayWidth) println("ERROR: Image is too wide"); //display checker
//if (imageHeight >= displayHeight) println("ERROR: Image is too high");
pic = loadImage("shacocs.png"); //dimensions width 120 height 120
//
//rect layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
