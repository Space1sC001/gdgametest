class Coin{
  
  PImage coin;
  int coinX;
  int coinY;
/**-------------------Coin_Contstructor-------------------------**/
  public Coin(int maxX,int maxY){
    coinX = (int(random(1,maxX)))*5;
    coinY = (int(random(1,maxY)));   
    coin=loadImage("./images/coin.png");
    
    
    
  } 
/**------------------Coin_Movement==----------------------------**/
  void moveCoin(){
    
   image(coin,coinX,coinY,50,50); 
   coinX-=10;
   
  }
/**-------------------------------------------------------------**/
}
