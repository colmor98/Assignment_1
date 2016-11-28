/*
Author: Colm O'Reilly
Student Number: C15502723
Description: A spaceship view onto a foreign planet
*/

//Globals
//images
PImage pic;


void setup()
{
  size(1000,625);
  
  //pics
  pic = loadImage("spaceplanet.jpg");
}

void draw()
{
   background(pic);
}