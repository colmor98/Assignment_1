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
PImage Jupiter;
PImage Earth;
PImage Luna;

//font
PFont font;
PFont font1;

//variables
int loading_bar = 0;
float rotateValue = 0.0;

//classes
loading load = new loading();
ganymede ganymede = new ganymede();
Jupiter jupiter = new Jupiter();
Earth earth = new Earth();
Luna luna = new Luna();

void setup()
{
  size(1000,625);
  
  //pics
  pic = loadImage("spaceplanet.jpg");
  img = loadImage("stars.jpg");
  Ganymede = loadImage("Ganymede.png");
  Jupiter = loadImage("jupiter.png");
  Earth = loadImage("earth.png");
  Luna = loadImage("luna.png");
  
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
  
  //oxygen level
  ellipse(120,550, 130,130);
  //O2 text
  fill(255);
  textFont(font1,20);
  text("O",110,610);
  textFont(font1,16);
  text("2",119,610);
  //speed lines
  stroke(255,0,0);
  line(58,565, 80, 560);
  stroke(198,0,7);
  line(58,530, 80,535);
  stroke(250,255,3);
  line(80,500, 95,515);
  stroke(5,129,11);
  line(115,485, 116,510);
  stroke(5,129,11);
  line(150,493, 140,515);
  stroke(5,129,11);
  line(180,530, 160,535);
  stroke(5,129,11);
  line(185,565, 160,560);
  //centre of circle
  fill(255);
  noStroke();
  ellipse(120,550,10,10);
  
  
}

void O2()
{
  rotateValue +=.01;
  stroke(255);
  triangle(115,550, 130,540, 121,552);
  
  fill(255,100);
  ellipse(1000,625,310,230);
  textFont(font1,20);
  fill(6,62,106);
  text("0 MPH", 940,620);

}

void radar()
{
 stroke(255);
 fill(0,0,0,170);
 rect(410,480,180,140,10);
 //arcs
 noFill();
 arc(495,620, 60,60,radians(-180),0 );
 arc(495,620, 140,130,radians(-180),0 );
 arc(500,590, 180,140,radians(-180),0 );
 
 fill(255);
 triangle(495,620, 495,500, 505,500);
 
 ellipse(480,570, 6,6);
 noFill();
 ellipse(480,570,14,14);
   
   
}

void draw()
{
   if(loading_bar == 300)
  {
    background(pic);
    window();
    screen();
    O2();
    radar();
  }
  else
  {
      //print loading screen
      load.render();
  }
    
    //load ganymede
    if(keyPressed);
    {
      if(key == 'g' || key == 'G')
      {
        ganymede.render();
      }
    }//end ganymede
    
    if(keyPressed);
    {
      if(key == 'j' || key == 'J')
      {
        jupiter.render();
      }
    }//end jupiter
  
  if(keyPressed);
    {
      if(key == 'e' || key == 'E')
      {
        earth.render();
      }
    }//end earth
    
    if(keyPressed);
    {
      if(key == 'l' || key == 'L')
      {
        luna.render();
      }
    }//end luna
  
}