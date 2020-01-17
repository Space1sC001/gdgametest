class Coin{
  
  PImage coin;
  int coinX;
  int coinY;
  boolean coinHit;
  
/**-------------------Coin_Contstructor-------------------------**/
  public Coin(int minY, int maxX,int maxY){
    coinX = (int(random(1,maxX)))*5;
    coinY = (int(random(minY,maxY)));   
    coin=loadImage("./images/coin.png");
    coinHit=false;
    
    
  } 
/**------------------Coin_Movement==----------------------------**/
  void moveCoin(){
    
   image(coin,coinX,coinY,50,50); 
   coinX-=10;
   if(coinHit){
     coinX=1500;
     coinY=int(random(1,600));
        
    }
  }
  /**----------------Coin_Collision-----------------------------**/
  public void hitCoin(Coin player){
    if(sqrt(pow((x-player),2) + pow((y-player.y),2))<=(size/2+player/2)){                //distance formula is less than the sum of two radii, means there is a collison
      score+=1;
      coinHit=true;
      
  }
}
}
