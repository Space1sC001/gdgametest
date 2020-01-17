float x = 100;
float y = 660;
float bgX;
float bgY = -20;
float shakeLoop;
PImage bg;
PImage coins;
public int score;
Coin[] coinArray;
//float topX = ;




boolean grounded = true;



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


  if(keyPressed){
    if(keyCode == UP){
      y-=2; 
    }
  }
  if(y <= 655){
    grounded = false;
    
  }

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


void keyReleased(){
  if(keyCode == UP){
    while(!grounded){
      y += 2;
    }
    
  }
      
}
   
     
    
    
  
