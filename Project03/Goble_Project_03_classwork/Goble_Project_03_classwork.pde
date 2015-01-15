//Project 03 
//Connor Goble


//Segment
Segment arm = new Segment(300,200,-90,100);
Segment hand = new Segment(300,200,90,130);
Segment neck = new Segment(300,200,-90,140);
Segment head = new Segment(300,200,-90,115);
Segment wrist = new Segment(300,200,-90,120);
Skeleton mySkeleton= new Skeleton(300,200);
void setup(){
  
  size(600,400);
  background (240,240,240);
arm.weight = 10;
arm.setPenColor(255,0,0);

hand.weight = 10;
hand.setPenColor(0,0,255);

neck.weight = 10;
neck.setPenColor(0,255,0);

head.weight = 10;
head.setPenColor(255,255,0);

wrist.weight = 10;
wrist.setPenColor(0,255,255);
}

void draw(){
  //background(10,240,240);
  //mySkeleton.act();
  arm.drawLine();
  arm.turn(10);
  
  hand.goTo(arm.getEndx(), arm.getEndY());
  hand.drawLine();
  hand.turn(15);
  
  neck.goTo(hand.getEndx(), hand.getEndY());
  neck.drawLine();
  neck.turn(14);
  
  head.goTo(neck.getEndx(), neck.getEndY());
  head.drawLine();
  head.turn(20);
  
  wrist.goTo(neck.getEndx(), neck.getEndY());
  wrist.drawLine();
  wrist.turn(15);
  }
