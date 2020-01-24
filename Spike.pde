class Spike{
  PImage spike;
  float sX;
  float sY;

  
  public Spike(float x, float y){
    spike = loadImage("./images/spike.png");

    sX = x;
    sY = y;

  }
  
  void moveSpike(Player p){
    sX -= 10;
    image(spike, sX, sY, 25, 25);
    if(this.sY + 25 >= p.y && this.sY <= p.y + 20 && this.sX + 25 >= p.x && this.sX <= p.x + 20){
      p.alive = false;
     
    }
  }
  
  
  
  
  
  
  
  
  
}



    
      
