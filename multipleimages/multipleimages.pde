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
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*6/8;
rectHeightPic2 = displayHeight*1/2;
//
//rect layout and image printing on canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //image 1 landscape
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //image 2 landscape
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
