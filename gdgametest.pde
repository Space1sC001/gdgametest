float bgX;
float bgY = -20;
float shakeLoop;
PImage bg, coin, platform;

Platform[] pfArray;
Player p = new Player();
//lines 8-16 dont use







//
void setup(){
  size(1000, 730);
  bg = loadImage("./images/bggd.png");
  smooth();
  pfArray = new Platform[100];
  for(int i = 0; i < pfArray.length; i++){
    pfArray[i] = new Platform(width+i*300);
  }
}

void draw(){
  moveBG();
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


/*void keyReleased(){
  if(keyCode == UP){
    v = 10;
    
  }
      
}*/
   
     
    
    
  
