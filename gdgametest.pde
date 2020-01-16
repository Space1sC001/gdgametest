float x = 100;
float y = 660;
float bgX;
float bgY = -20;
float shakeLoop;
PImage bg;
PImage coins;
Coin[] coinArray;
//float topX = ;
 
void setup(){
  size(1000, 730);
  bg = loadImage("./images/bggd.png");
  smooth();
  coins = loadImage("./images/coin.png");
  coinArray = new Coin[10];
  for(int i=0;i<coinArray.length; i++){
    coinArray[i]=new Coin(700,400);
  }
}

void draw(){
  moveBG();
  moveCoins(); 
  rect(x, y, 20, 20);
}

void moveBG(){
  image(bg,bgX,bgY,width, 750);
  if(shakeLoop < 25){
    y += 0.3;
    bgY += 0.3;
    shakeLoop += 1;
  } 
  else if(shakeLoop < 49 && shakeLoop > 24){
    bgY -= 0.3;
    y -= 0.3;
    shakeLoop += 1;
  }
  else{
    bgY = -20;
    shakeLoop = 0;
    println(y);
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
