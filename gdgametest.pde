/*
Note for player:
- The restarting of game function is slow. It takes about 10 seconds and is kind of broken. To restart, close the window and reopen it. 
Controls: 
- Up is jump
Goal:
- Collect as many coins as you can. They are yellow and shiny and cool and slippery. If you do not collect them when you jump into them, it's because you suck at grabbing coins since you don't have arms...
- The spikes are dangerous. The red of the spikes is just tomato sauce. The black of the spikes is an unknown substance.
- The platforms are safe. They are green and brown. They have levitation powers because they are just that cool.
- You are a little square. You are boring. You can jump. You can (sometimes) grab coins. You can die. You can also bug out. You are annoying
*/

float bgX;
float bgY = -20;
float shakeLoop;
PImage bg, coins, platform, deathscreen1, deathscreen2;
int deathStart;
int deathEnd;
boolean timerOn = true;
boolean timerFinished = false;
public int score;
Coin[] coinArray;


Platform[] pfArray;
Spike[] sArray;
Player p = new Player();

void setup(){
  size(1000, 730);
  bg = loadImage("./images/bggd.png");
  deathscreen1 = loadImage("./images/deathscreen1.png");  
  deathscreen2 = loadImage("./images/deathscreen2.png"); 
  coins = loadImage("./images/coin.png");
  smooth();
  score=0;
  
  coinArray = new Coin[100];
  for(int i=0;i<coinArray.length; i++){
    coinArray[i]=new Coin(width+i*300);
  }
    
  pfArray = new Platform[4];
  for(int i = 0; i < pfArray.length; i++){
    pfArray[i] = new Platform(width+i*275);
  }
  
  sArray = new Spike[25];
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
    moveCoins(); 
    textSize(32);
    text("Score: " + score, 100, 50);
    
  }
  else if(p.alive == false){
    if(!timerFinished){
      if(timerOn){
        deathEnd = second() + 2;
        if(deathEnd >= 60){
          deathEnd = 2;
        }
        timerOn = false;
      }
      image(deathscreen1, 300, 300, 400, 150);
      deathStart = second();
      if(deathStart >= 58){
        deathStart = 0;
      }
      if(deathStart == deathEnd){
        image(deathscreen2, 300, 300, 400, 150);     
        timerFinished = true;
      }
      
    }
  }
  

}


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
   
     
    
    
  
