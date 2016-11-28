/*
Author: Colm O'Reilly
Student Number: C15502723
Description: A spaceship view onto a foreign planet
*/

//Globals
//images
PImage pic;
PImage img;

//font
PFont font;

//var
int loading_bar = 0;

//classes
loading load = new loading();

void setup()
{
  size(1000,625);
  
  //pics
  pic = loadImage("spaceplanet.jpg");
  img = loadImage("stars.jpg");
  
  //fonts
  font = loadFont("AgencyFB-Bold-48.vlw");
}

void draw()
{
   if(loading_bar == 300)
  {
    background(pic);
  }
  else
    {
      //print loading screen
      load.render();
    }
  
}