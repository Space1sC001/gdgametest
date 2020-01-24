class Coin{
  
  PImage coin;
  int X;
  float Y;
  boolean coinHit;

/**-------------------Coin_Contstructor-------------------------**/
  public Coin(int x){ 
    coin=loadImage("./images/coin.png");
    coinHit=false;
    X=x;
    Y=random(520, 580);
    
    
  } 
/**------------------Coin_Movement==----------------------------**/
  void moveCoin(Player p){
    
   image(coin,X,Y,50,50); 
   X-=10;
   if(p.x==X-50&&p.y<=Y-50||p.x==X+50&&p.y<=Y+50){
    score++; 
    Y=800;
   }
  }
}
