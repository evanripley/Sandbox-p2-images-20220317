//global variables
//
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//
fullScreen(); //size(600,300);
//populations
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth;
imageHeight = displayHeight;
pic = loadImage("shacocs.png"); //dimensions width 120 height 120
//
//rect layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
