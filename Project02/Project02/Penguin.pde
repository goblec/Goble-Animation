class Penguin extends Actor{
  
  
  public Penguin(){
    super();
  }
  
 public Penguin (int xPos, int yPos){
    super(xPos, 345);
  }
 public void drawPenguin(int s){
   
 //int s = size;
    
 stroke(0,0,0);
  fill(245,170,7);
  triangle(x-.5*s,y+10.5*s,x+1*s, y+7*s, x-5*s,y+10.5*s);
  //left leg
  triangle(x+.5*s,y+10.5*s,x-1*s, y+7*s, x+5*s,y+10.5*s);
  fill(60,60,60);  
  //body
  stroke(0,0,0);
  strokeWeight(2);
  ellipse(x,y+1*s,14.75*s,16.75*s);
  //belly
  fill(240,240,240);
  ellipse(x,y+4.25*s,7.5*s,8.5*s);
  //eyes
  stroke(240,240,240);
  ellipse(x-1.25*s,y-2.75*s,3.25*s,4.25*s);
  ellipse(x+1.25*s,y-2.75*s,3.25*s,4.25*s);
  fill(0,0,0);
  ellipse(x-.75*s,y-2.5*s,1.5*s,1.5*s);
  ellipse(x+.75*s,y-2.5*s,1.5*s,1.5*s);
  //nose
  fill(245,170,7);
  stroke(0,0,0);
  triangle(x-1.5*s,y-1.5*s,x+ 1.5*s, y-1.5*s, x+.025*s,y+1*s);
  //right arm
  stroke(240,240,240);
  fill(50,50,50);
  triangle(x-8*s,y-.75*s,x-4*s, y-.75*s, x-5.75*s,y+5.5*s);
  //left arm
  triangle(x+8*s,y-.75*s,x+4*s, y-.75*s, x+5.75*s,y+5.5*s);
  //Hat
  fill(255,0,0);
  stroke(0,0,0);
  triangle(x-2.5*s,y-7*s,x+ 2.5*s, y-7*s, x+.025*s,y-13*s);
  fill(240,240,240);
  stroke(0,0,0,30);
  strokeWeight(5);
  rect(x-3.5*s, y-7*s,7*s,1*s);
  ellipse(x-.025*s,y-13*s,1.5*s,1.5*s);
}
  
  void waddle(){
 if (keyPressed){
    if(key==CODED){
  if(keyCode == LEFT){
    velocity = 10;
    direction = 180 ;
   
    move();
    
  }
  if(keyCode == RIGHT){
    velocity = 10;
    direction = 0;
    
    move();
  }
  if(keyCode == UP){
    velocity = 10;
    direction = 270 ;
   
    move();
    
  }
  if(keyCode == DOWN){
    velocity = 10;
    direction = 90;
    
    move();
  }
 
  
    }
    }
  }
   
}

  
