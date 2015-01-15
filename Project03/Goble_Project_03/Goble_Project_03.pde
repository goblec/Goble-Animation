//Project 03 
//Connor Goble


//Segment
Segment arm = new Segment(300,200,-90,100);
Segment hand = new Segment(300,200,90,50);
Segment neck = new Segment(300,200,-90,75);
Segment head = new Segment(300,200,-90,75);

Skeleton mySkeleton= new Skeleton(300,200);
void setup(){
  
  size(600,400);
  background (240,240,240);
//arm.weight = 10;
//arm.setPenColor(255,0,0);

//hand.weight = 10;
//hand.setPenColor(0,0,255);

//neck.weight = 10;
//neck.setPenColor(0,255,0);

//head.weight = 10;
//head.setPenColor(255,255,0);
}

void draw(){
  background(10,240,240);
  mySkeleton.act();
//  arm.drawLine();
//  arm.turn(5);
  
//  hand.goTo(arm.getEndx(), arm.getEndY());
//  hand.drawLine();
//  hand.turn(2);
  
//  neck.goTo(hand.getEndx(), hand.getEndY());
//  neck.drawLine();
//  neck.turn(4);
  
//  head.goTo(neck.getEndx(), neck.getEndY());
//  head.drawLine();
//  head.turn(3);
  }
