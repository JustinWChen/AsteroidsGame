//your variable declarations here
 Spaceship plane = new Spaceship();
 Star[] dipdots = new Star[150];
 ArrayList <Asteroid> rocks = new ArrayList();
 ArrayList <Bullet> shots = new ArrayList <Bullet>();
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
    for (int i = 0; i < 30; i++){
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
   fill(0);
  rect(0,0,600,600);
for (int i = 0; i < dipdots.length; i++){
    dipdots[i].show();
}
stroke(255);
for (int i = 0; i < rocks.size(); i++){
  rocks.get(i).show();  
  rocks.get(i).move();
}
plane.show();
plane.move();
for (int i = 0; i < shots.size(); i++){
shots.get(i).move();
shots.get(i).show();
}
for (int i=0;i< rocks.size();i++){
float distanceone= dist(plane.getX(),plane.getY(),rocks.get(i).getX(),rocks.get(i).getY());
  if (distanceone<15){
rocks.remove(i);
  }
for (int j = 0; j <shots.size() ;j++){
float distance = dist(shots.get(j).getX(),shots.get(j).getY(),rocks.get(i).getX(),rocks.get(i).getY());
  if (distance<14){
rocks.remove(i);
shots.remove(j);
j--;
break;
  }
}
}
for (int i = 0; i < shots.size(); i++){
   if (shots.get(i).getX()==500||shots.get(i).getY()==500||shots.get(i).getY()==0 || shots.get(i).getX()==0){
  shots.remove(i);
  break;
} 
}
if (rocks.size()==0){
for (int i = 0; i <30; i++)
  rocks.add(new Asteroid());
}


if (pressedW == true)
plane.accelerate(0.03);
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
     if (key == ' '){
  shots.add(new Bullet(plane));
  }
}
