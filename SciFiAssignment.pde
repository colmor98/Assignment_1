/*
Author: Colm O'Reilly
Student Number: C15502723
Description: A spaceship view onto a foreign planet
*/

//Globals
//images
PImage pic;
PImage img;
PImage Ganymede;

//font
PFont font;
PFont font1;

int loading_bar =0;

//classes
loading load = new loading();
ganymede ganymede = new ganymede();

void setup()
{
  size(1000,625);
  
  //pics
  pic = loadImage("spaceplanet.jpg");
  img = loadImage("stars.jpg");
  Ganymede = loadImage("Ganymede.png");
  
  //fonts
  font = loadFont("AgencyFB-Bold-48.vlw");
  font1 = loadFont("AgencyFB-Reg-48.vlw");
}

void window()
{
  if(keyPressed)
  {
    if(key == 'i' || key == 'I')
    {
       textFont(font1,18);
        fill(255);
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
        
        
        //jupiter line
        stroke(255);
        noFill();
        beginShape();
        vertex(350,200);
        vertex(400,150);
        vertex(450,150);
        endShape();
        //jupiter tag
        text("Jupiter",452,150);
        
        //earth line
        stroke(255);
        noFill();
        beginShape();
        vertex(250,310);
        vertex(210,150);
        vertex(170,150);
        endShape();
        //Earth text 
        text("Earth",145,148);
        
        //Luna line
         stroke(255);
        noFill();
        beginShape();
        vertex(305,300);
        vertex(270,100);
        vertex(240,100);
        endShape();
        //Luna text
        text("Luna",210,101);
              
      }
  }//end outer if
  else
  {
    noStroke(); 
  }

}//end window()

void screen()
{
  //view out window
   stroke(255);
   fill(6,62,106,191); //extra parameter adds opacity to shape
   
   beginShape();
   vertex(0,510);
   vertex(70,480);
   vertex(500,450);
   vertex(930,480);
   vertex(1000,510);
   vertex(1000,625);
   vertex(0,625);
   endShape(CLOSE);
   
  beginShape();
  vertex(0,100);
  vertex(50,70);
  vertex(950,70);
  vertex(1000,100);
  vertex(1000,0);
  vertex(0,0);
  endShape(CLOSE);
}

void draw()
{
   if(loading_bar == 300)
  {
    background(pic);
    window();
    screen();
  }
  else
  {
      //print loading screen
      load.render();
  }
    
    if(keyPressed);
    {
      if(key == 'g' || key == 'G')
      {
        ganymede.render();
      }
    }//end ganymede
    
  
}