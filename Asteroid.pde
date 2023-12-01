class Asteroid extends Floater {
private double rotSpeed;
  public Asteroid(){
corners = 6;

xCorners = new int[]{(int)(Math.random()*2)-10,(int)(Math.random()*27)-4,(int)(Math.random()*27)-4,(int)(Math.random()*27)-4,(int)(Math.random()*2)-10,(int)(Math.random()*2)-10};
yCorners = new int[]{(int)(Math.random()*2)-10,(int)(Math.random()*2)-10,0,(int)(Math.random()*27)-4,(int)(Math.random()*27)-4,0};
 myCenterX = (int)(Math.random()*500)+1;
 myCenterY = (int)(Math.random()*500)+1;
  myPointDirection = 0;
   myXspeed = Math.random()*3;
    myYspeed = Math.random()*3;
      myColor = color(150);
      rotSpeed= (int)(Math.random()*4)-3;
 
}
public void move(){
turn(rotSpeed);
super.move();
}
  public float getX(){
    return (float) myCenterX;
  }

  public float getY(){
    return (float) myCenterY;
  }
}
