class Car extends Actor{
  
  public Car(){
    super();
  }
  
  public Car(int xPos, int yPos){
    super(xPos, yPos);
  }
  
  public void drawCar(){
    stroke(0,0,0);
    strokeWeight(2);
    fill(0,0,255);
    rect(x,y, 100,35);
    
    fill (0,0,0);
    ellipse(x+25,y+35,25,25);
    ellipse(x+75,y+35,25,25);
    
    fill(255,0,0);
    quad(x+25, y, x+35, y-35, x+65, y-35,x+75,y);
  }
  
  void drive(){
    if(key==CODED){
  if(keyCode == LEFT){
    x--;
  }
  if(keyCode == RIGHT){
    x++;
  }
    }
}
}


