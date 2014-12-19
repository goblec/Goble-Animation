//Connor Goble 
// actor class Project 02 practice
//Main

Actor john = new Actor(300,200);
Actor jill = new Actor(100,100);
Actor connor = new Actor (100, 200);
Car car = new Car (200,300);
RainDrop rain [] = new RainDrop [100];
//setup
void setup(){
  
  size(600,400);
  background (240,240,240);
  
 // john.setColor(0,0,255);
 // john.setPenColor(255,0,0);
 // john.wid = 100;
 // john.hei = 100;
 // john.setDX (10);
 // john.setDY (10);
  
 // jill.setColor(0,255,0);
 // jill.wid = 25;
 // jill.hei = 25;
 // jill.setDX (15);
 // jill.setDY (15);
  
  //connor.setColor(255,0,255);
  //connor.setPenColor(255,0,0);
  //connor.wid = 30;
  //connor.hei = 30;
  //connor.setDX (10);
  //connor.setDY (10);

for (int i = 0; i<rain.length; i++){
  rain[i] = new RainDrop();
}
}

void draw(){
  background(240,240,240);
  
//  john.drawRect();
//  john.move();
//  john.bounceEdge();
  
//  jill.drawRect();
//  jill.move();
  //jill.bounceEdge();
  
//  connor.drawTriangle();
//  connor.move();
//  connor.bounceEdge(); 
  
 // car.goTo(mouseX, mouseY);
//  car.drawCar();
//  car.drive();
for (int i = 0; i< rain.length; i++){
  rain[i].act();
}
}

