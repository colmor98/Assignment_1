class Earth
{
  Earth()
  {
  }
  
  void render()
  {
    rotateValue +=.02;
    
    noStroke();
    background(34,35,36,255);//no opacity
    //rotate image
    pushMatrix();
      translate(700,360);
      rotate(rotateValue);
      image(Earth,-256,-256);
    popMatrix();
    
    textFont(font,40);
    fill(155,150,150);
    textSize(50);
    text("Earth", width/2 - 20,50);
    
    textFont(font,32);
    text("- Third planet from the Sun", 25,150);
    text("- Formed circa 4.54 billion\n  years ago",25,200);
    text("- Only planet habitable to humans in\n  the Milky Way that we know of",25, 300);
    text("- 71% of Earth's surface is covered\n  with water.The remaining\n  29% is land mass",25,400);
    
    //draw shape to surround text
    stroke(255);
    noFill();
    beginShape();
    vertex(0,70);
    vertex(50,110);
    vertex(360,110);
    vertex(410,160);
    vertex(410,460);
    vertex(360,510);
    vertex(50,510);
    vertex(0,550);
    endShape();
    
    //show text to show how to re-direct back to home screen
    textFont(font,18);

    text("Press 'b' or 'B' to return to your home screen", 10,610);

    if(keyPressed)
    {
      if(key == 'b' || key == 'B')
      {
        draw();
      }
    }//end key pressed
  }//end render
  
}//end earth