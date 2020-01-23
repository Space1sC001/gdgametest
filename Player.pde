class Player{
  boolean grounded = true;
  float v = 20;
  boolean falling = false;
  float x = 100;
  float y = 660;
  float g = 1;
  boolean platformed = false;
  boolean alive = true;
  
  void update(){
    rect(this.x, this.y, 20, 20);
    if(this.falling == false){
      if(keyPressed){
        if(keyCode == UP){
          this.v-=1;
          this.y-=this.v;
          if(this.v == 0){
            this.falling = true;
          }
        }
      }
    }
    if((this.y <= 655) && (platformed == false)){
      this.grounded = false;
      println("ee");
    }
    else if(this.y > 656){
      this.grounded = true;
      this.falling = false;
      this.g = 1;
      this.v = 20;
      
    }
    if((!this.grounded) && (!this.platformed)){
      this.y+=this.g;
      this.g+=1;
      println("hi");
      
      
    }
    println(this.y + this.x);
  }
  
  
  
  
  
  
  
}
