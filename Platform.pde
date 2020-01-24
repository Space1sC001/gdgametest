class Platform{
  PImage platform;
  float pX = width/2;
  float pY = height/2;
  float pYnext = 600;
  boolean pfed = false;
  
  public Platform(float x){
    platform = loadImage("./images/platform.png");
    pX = x;
    this.pY = random(this.pYnext - 40, this.pYnext + 30);
    pYnext = this.pY;
  }
  
  void movePf(Player p){
    pX-=10;
    //println(p.y);
    image(platform, this.pX, this.pY, 125, 30);
    if(this.pY + 5 >= p.y && this.pY - 20 <= p.y && this.pX + 125 >= p.x && this.pX <= p.x + 20){
      if(p.y + 20 >= this.pY + 2){
        p.y -= (this.pY - p.y);  
      }
      p.grounded = true;
      this.pfed = true;
      p.platformed = true;
      p.falling = false;
      p.g = 1;
      p.v = 20;
      //println("hi");
      
      
    
    
    
    }
    else{
      if(this.pfed == true){
        p.platformed = false; 
        pfed = false;
      }
    }   
  }

}
