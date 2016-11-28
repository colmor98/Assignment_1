class Luna
{
  Luna()
  {
  }
  
  void render()
  {
     rotateValue +=.05;
    
    noStroke();
    background(34,35,36,255);//no opacity
    //rotate image
    pushMatrix();
      translate(680,300);
      rotate(rotateValue);
      image(Luna,-250,-250);
    popMatrix();
    
    textFont(font,40);
    fill(155,150,150);
    textSize(50);
    text("Luna", width/2 - 20,50);
    
    textFont(font,32);
    text("- Earth's one and only moon", 25,150);
    text("- Fifth-largest natural satellite\n  in the Solar System",25,200);
    text("- The second brightest regularly-\n  visable celestial object in Earth's\n  sky, after the Sun.",25,300);
    text("- It's gravitational influence produces\n  the ocean and body tides, and the\n  slight lengthening of the day",25,420);
    
    //draw shape to surround text
    stroke(255);
    noFill();
    beginShape();
    vertex(0,70);
    vertex(50,110);
    vertex(360,110);
    vertex(425,160);
    vertex(425,460);
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
  }
  
}//end Luna