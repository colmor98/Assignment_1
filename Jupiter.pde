class Jupiter
{
  Jupiter()
  {
  }
  
  void render()
  {
     rotateValue +=.02;
    
    noStroke();
    background(34,35,36,255);//no opacity
    //rotate image
    pushMatrix();
      translate(650,300);
      rotate(rotateValue);
      image(Jupiter,-221.5,-221.5);
    popMatrix();
    
    textFont(font,40);
    fill(155,150,150);
    textSize(50);
    text("Jupiter", width/2 - 20,50);
    
    textFont(font,32);
    text("- Fifth planet from the sun", 25,150);
    text("- A gas Giant, along with Saturn", 25,200);
    text("- Named after the Roman God\n  Jupiter",25,250);
    text("- Primarily composed of hydrogen\n  with one quarter of its mass\n  being helium",25,350);
    text("- Discovered by Galileo Galilei",25,480);
    
    
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
  }
}//end jupiter