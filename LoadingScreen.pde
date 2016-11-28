class loading
{
  loading()
  {
    
  }
  void render()
  {
    //sets background to solar system image
  background(img);
  fill(0);
  textSize(50);
  
  if(loading_bar < 300)
    {
    
      //loading text outputted on screen
      if (loading_bar <= 80)
      {
         text("Loading.", width/2 - 100, height/2); 
      }
      if( loading_bar <150 && loading_bar >= 79)
      {
         text("Loading..", width/2 - 100, height/2); 
      }
      if( loading_bar <230 && loading_bar >= 149)
      {
         text("Loading...", width/2 - 100, height/2); 
      }
      if( loading_bar <300 && loading_bar >= 229)
      {
         text("Loading....", width/2 - 100, height/2); 
      }
      
      //make loading bar move
      stroke(0);
      rect(width/2 - 150, height/2 + 20, 300, 40);
      fill(20,0,200);
      noStroke();
      rect(width/2 -149, height/2 + 21, loading_bar, 39);
      //incrimentation
      loading_bar +=1; 
    }//end if 
    
  }//end render
  
}//end class