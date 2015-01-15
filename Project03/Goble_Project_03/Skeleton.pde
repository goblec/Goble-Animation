class Skeleton extends Actor{
  Segment body;
  Segment luleg;
  Segment llowleg;
  Segment lshoulder;
  Segment luarm;
  Segment llowarm;
  Segment ruleg;
  Segment rlowleg;
  Segment rshoulder;
  Segment ruarm;
  Segment rlowarm;
  Segment neck;

  
  public Skeleton(float xPos, float yPos){
    super (xPos, yPos);
    body = new Segment(xPos, yPos, -90,100);
    body.weight = 10;
    body.setPenColor(0,0,0);
    
    luleg = new Segment(xPos, yPos, 45,50);
    luleg.weight = 10;
    luleg.setPenColor(0,0,255);
    
    llowleg = new Segment(luleg.getEndx(), luleg.getEndY(), 90,50);
    llowleg.weight = 10;
    llowleg.setPenColor(0,255,0);
    
    lshoulder = new Segment(body.getEndx(), body.getEndY(), 0,20);
    lshoulder.weight = 10;
    lshoulder.setPenColor(0,0,255);
    
    luarm = new Segment(lshoulder.getEndx(), lshoulder.getEndY(), 45,25);
    luarm.weight = 10;
    luarm.setPenColor(0,255,0);
    
    llowarm = new Segment(luarm.getEndx(), luarm.getEndY(), 45,20);
    llowarm.weight = 10;
    llowarm.setPenColor(255,0,0);
    
    ruleg = new Segment(xPos, yPos, -45, -50);
    ruleg.weight = 10;
    ruleg.setPenColor(0,0,255);
    
    rlowleg = new Segment(ruleg.getEndx(), ruleg.getEndY(), -90, -50);
    rlowleg.weight = 10;
    rlowleg.setPenColor(0,255,0);
    
    rshoulder = new Segment(body.getEndx(), body.getEndY(), 0, -20);
    rshoulder.weight = 10;
    rshoulder.setPenColor(0,0,255);
    
    ruarm = new Segment(rshoulder.getEndx(), rshoulder.getEndY(), -45, -25);
    ruarm.weight = 10;
    ruarm.setPenColor(0,255,0);
    
    rlowarm = new Segment(ruarm.getEndx(), ruarm.getEndY(), -45, -20);
    rlowarm.weight = 10;
    rlowarm.setPenColor(255,0,0);
    
    neck = new Segment(body.getEndx(), body.getEndY(), -90, 30);
    neck.weight = 10;
    neck.setPenColor(255,255,255);
}

public void drawFrame(){
  body.drawLine();
  body.goTo(x,y);
  luleg.drawLine();
  llowleg.goTo(luleg.getEndx(), luleg.getEndY());
  llowleg.drawLine();
  
  lshoulder.goTo(body.getEndx(), body.getEndY());
  lshoulder.drawLine();
  
  luarm.goTo(lshoulder.getEndx(), lshoulder.getEndY());
  luarm.drawLine();
  
  llowarm.goTo(luarm.getEndx(), luarm.getEndY());
  llowarm.drawLine();
  
  ruleg.drawLine();
  rlowleg.goTo(ruleg.getEndx(), ruleg.getEndY());
  rlowleg.drawLine();
  
  rshoulder.goTo(body.getEndx(), body.getEndY());
  rshoulder.drawLine();
  
  ruarm.goTo(rshoulder.getEndx(), rshoulder.getEndY());
  ruarm.drawLine();
  
  rlowarm.goTo(ruarm.getEndx(), ruarm.getEndY());
  rlowarm.drawLine();
  
  neck.goTo(body.getEndx(), body.getEndY());
  neck.drawLine();
  
 
  ellipse(neck.getEndx(), neck.getEndY(),30,30);

}

public void act(){
  drawFrame();
  
  if(keyPressed){
  if(key == 'q'){
    body.turn(1);
  }
  if(key == 'a' ){
    body.turn(-1);
  }
  if(key == 'w'){
    luleg.turn(1);
  }
  if(key == 's' ){
    luleg.turn(-1);
  }
  if(key == 'e'){
    llowleg.turn(1);
  }
  if(key == 'd' ){
    llowleg.turn(-1);
  }
  if(key == 'r'){
    ruleg.turn(1);
  }
  if(key == 'f' ){
    ruleg.turn(-1);
  }
  if(key == 't'){
    rlowleg.turn(1);
  }
  if(key == 'g' ){
    rlowleg.turn(-1);
  }
  if(key == 'y'){
    luarm.turn(1);
  }
  if(key == 'h' ){
    luarm.turn(-1);
  }
  if(key == 'u'){
    llowarm.turn(1);
  }
  if(key == 'j' ){
    llowarm.turn(-1);
  }
  if(key == 'i'){
    ruarm.turn(1);
  }
  if(key == 'k' ){
    ruarm.turn(-1);
  }
  if(key == 'o'){
    rlowarm.turn(1);
  }
  if(key == 'l' ){
    rlowarm.turn(-1);
  }
  if(key == 'p'){
    lshoulder.turn(1);
  }
  if(key == ';' ){
    lshoulder.turn(-1);
  }
  if(key == '['){
    rshoulder.turn(1);
  }
  if(key == ']' ){
    rshoulder.turn(-1);
  }
  if(key == '-'){
    neck.turn(1);
  }
  if(key == '=' ){
    neck.turn(-1);
  }
    }
}

}
