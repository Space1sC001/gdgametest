float bgX;
float bgY = -20;
float shakeLoop;

PImage bg;
PImage coins;
public int score;
Coin[] coinArray;
//float topX = ;


PImage bg, coin, platform;


Platform[] pfArray;
Player p = new Player();
//lines 8-16 dont use







//
void setup(){
  size(1000, 730);
  bg = loadImage("./images/bggd.png");
  smooth();

  coins = loadImage("./images/coin.png");
  coinArray = new Coin[10];
  for(int i=0;i<coinArray.length; i++){
    coinArray[i]=new Coin(300, 700,400);
  }
  score=0;
  

  pfArray = new Platform[100];
  for(int i = 0; i < pfArray.length; i++){
    pfArray[i] = new Platform(width+i*300);
  }

}

void draw(){
  moveBG();

  moveCoins(); 
  rect(x, y, 20, 20);
  textSize(32);
  text("Score: " + score, 100, 50);
  for(Coin : coinArray){                                              //foreach loop (instead of a for loop) to go through each item in an array
    
    for(Coin b2: coinArray){                                            //check each ball against every other ball
      
      if(b1!=b2){
b1.ballCollision(b2);
      }
      
    }
    
  }

  p.update();
  movePfs();


}

void movePfs(){
  for(int i = 0; i < pfArray.length; i++){
    pfArray[i].movePf(p);
    
  }
  
  
  
  
}
void moveBG(){
  image(bg,bgX,bgY,width, 750);
  if(shakeLoop < 25){
    bgY += 0.3;
    shakeLoop += 1;
  } 
  else if(shakeLoop < 49 && shakeLoop > 24){
    bgY -= 0.3;
    shakeLoop += 1;
  }
  else{
    bgY = -20;
    shakeLoop = 0;
    //println(p.y);
  }
  bgX -= 2;
  image(bg,bgX+width,bgY,width,750);
  if(bgX <= -width){
    bgX = 0;  
  }
}

void moveCoins(){

  for(int i=0; i<coinArray.length;i++){
   coinArray[i].moveCoin(); 
  }
}

/*void keyReleased(){
  if(keyCode == UP){
    v = 10;
    
  }
      
}*/
   
     
    
    
  
