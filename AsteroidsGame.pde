//your variable declarations here
 Spaceship plane = new Spaceship();
 Star[] dipdots = new Star[150];
 boolean pressedW = false;
 boolean pressedA = false;
 boolean pressedD = false;
public void setup() 
{
  size(500,500);
    background(0);
    for (int i = 0; i < dipdots.length; i++){
    dipdots[i] = new Star();
  }

}
public void draw() 
{
   fill(0);
  rect(0,0,600,600);
for (int i = 0; i < dipdots.length; i++){
    dipdots[i].show();
}
plane.show();
plane.move();
if (pressedW == true)
plane.accelerate(0.05);
if (pressedA == true)
plane.turn(-3);
if (pressedD == true)
plane.turn(3);
if (pressedW==true && pressedA == true){
plane.turn(-3);
plane.accelerate(0.05);
}
if(pressedW == true && pressedD == true){
    plane.accelerate(0.05);
    plane.turn(3);
  }
}
public void keyPressed(){
  if(key == 'w'){
    pressedW = true;
  }
  if(key == 'd'){
    pressedD = true;
  }
  if(key == 'a'){
    pressedA = true;
  }
  if(key == 'b'){
    plane.hyperspace();
  }
}
public void keyReleased(){
  if(key == 'w'){
    pressedW = false;
  }
  if(key == 'd'){
    pressedD = false;
  }
    if(key == 'a'){
    pressedA = false;
  }
}
