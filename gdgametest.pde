
float bgX;
float bgY = -20;
float shakeLoop;
<<<<<<< HEAD
PImage bg, coin, platform, deathscreen1, deathscreen2;
int deathStart;
int deathEnd;
boolean timerOn = true;
boolean timerFinished = false;
=======
PImage bg;
PImage coins;
public int score;
Coin[] coinArray;
//float topX = ;
PImage bg, coin, platform;
>>>>>>> 9198ae3239d1cf66d73e20fa6312212f950a24b4


Platform[] pfArray;
Spike[] sArray;
Player p = new Player();
//lines 8-16 dont use







//
void setup(){
  size(1000, 730);
  bg = loadImage("./images/bggd.png");
  deathscreen1 = loadImage("./images/deathscreen1.png");  
  deathscreen2 = loadImage("./images/deathscreen2.png"); 
  smooth();
  coins = loadImage("./images/coin.png");
  coinArray = new Coin[10];
  score=0;
  
  for(int i=0;i<coinArray.length; i++){
    coinArray[i]=new Coin(width+i*300);
  }
    
  pfArray = new Platform[10];
  for(int i = 0; i < pfArray.length; i++){
    pfArray[i] = new Platform(width+i*300);
  }

  pfArray = new Platform[100];
  for(int i = 0; i < pfArray.length; i++){
    pfArray[i] = new Platform(width+i*300);
  }
<<<<<<< HEAD
  sArray = new Spike[500];
  for(int i = 0; i < sArray.length; i++){
    sArray[i] = new Spike(width +i*50, bgY + 675);
  }
}

void draw(){
  if(p.alive){
    moveBG();
    p.update();
    movePfs();
    moveSpikes();
    
  }
  else if(p.alive == false){
    if(!timerFinished){
      if(timerOn){
        deathEnd = second() + 5;
        if(deathEnd >= 60){
          deathEnd = 5;
        }
        timerOn = false;
      }
      image(deathscreen1, 300, 300, 400, 150);
      deathStart = second();
      if(deathStart >= 55){
        deathStart = 0;
      }
      if(deathStart == deathEnd){
        image(deathscreen2, 300, 300, 400, 150);     
        timerFinished = true;
      }
      
    }
  }
  

}
=======

}

void draw(){

  moveBG();
  moveCoins(); 
  textSize(32);
  text("Score: " + score, 100, 50);
  p.update();
  movePfs();
>>>>>>> 9198ae3239d1cf66d73e20fa6312212f950a24b4

void mouseClicked(){
  if(timerFinished){
    p.alive = true;
    println("test");
    setup(); 
    
     
  }
  
}

void movePfs(){
  for(int i = 0; i < pfArray.length; i++){
    pfArray[i].movePf(p);
  }
  
}

void moveSpikes(){
  for(int i = 0; i < sArray.length; i++){
    sArray[i].moveSpike(p);
    
    
    
  }
  
  
}
void moveBG(){
  image(bg,bgX,bgY,width, 750);
  if(shakeLoop < 25){
    bgY += 0.3;
    shakeLoop += 1;
    for(int i = 0; i < sArray.length; i++){
      sArray[i].sY += 0.3;
    }
  } 
  else if(shakeLoop < 49 && shakeLoop > 24){
    bgY -= 0.3;
    shakeLoop += 1;
    for(int i = 0; i < sArray.length; i++){
      sArray[i].sY -= 0.3;
    }
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
   coinArray[i].moveCoin(p); 
  }
}

/*void keyReleased(){
  if(keyCode == UP){
    v = 10;
    
  }
      
}*/
   
     
    
    
  
