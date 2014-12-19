//Connor Goble
//Project02
//Main

Actor john = new Actor(300,200);
Actor jill = new Actor(150,100);
Actor connor = new Actor (450, 200);
Penguin penguin = new Penguin (40,300);
SnowBalls snow [] = new SnowBalls[1000];
int count = 0;
//setup
void setup(){
  
  size(600,400);
  background (240,240,240);
 john.velocity = 10;
 john.direction = 270;
 jill.velocity = 20;
 jill.direction = 270;
 connor.velocity = 15;
 connor.direction = 270;
for (int i = 0; i<snow.length; i++){
  snow[i] = new SnowBalls();
//  snow[i] = direction;
}

}

void draw(){
  background(240,240,240);
  john.drawRect(5);
  john. move();
  john.bounceEdge();
  jill.drawRect(5);
  jill. move();
  jill.bounceEdge();
  connor.drawRect(5);
  connor. move();
  connor.bounceEdge();
  penguin.drawPenguin(3);
  penguin.waddle();
  count++;
  if(count >= 1000){
    count--;
    
  }
 for (int i = 0; i< count; i++){
  snow[i].act();
}
}
