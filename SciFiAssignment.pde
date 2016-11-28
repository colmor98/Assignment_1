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
PFont font1;

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
  font1 = loadFont("AgencyFB-Reg-48.vlw");
}

void window()
{
  //moon one info
    stroke(255);
    noFill();
    beginShape( );
    vertex(530,200);
    vertex(580,150 );
    vertex(610,150);
    endShape();
    //text for moon one
    text("Ganymede",612,148);
    textFont(font1,18);
    fill(255);
}

void draw()
{
   if(loading_bar == 300)
  {
    background(pic);
    window();
  }
  else
    {
      //print loading screen
      load.render();
    }
  
}