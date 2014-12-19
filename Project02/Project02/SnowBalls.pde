class SnowBalls extends Actor{
  
  public SnowBalls(){
    super();
    x = random(0, width);
    y = random(0, height);
    size = (int)random(3,10);
    
    velocity = (int)random(5,10);
    direction = 90;
   // dx = (int)random(5,10);
  }
  
  public void drawBall() {
    stroke(0,0,0);
    strokeWeight(1);
    fill(255,255,255);
    ellipse(x,y,size ,size);
  }
  
  public void act (){
    drawBall();
    move();
    if (y > height){
      y = -20;
      velocity = (int)random(1,10);
      direction = random(70,110);
     // dx = (int)random(1,10);
    }
  }
}
