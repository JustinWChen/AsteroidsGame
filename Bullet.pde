class Bullet extends Floater {
public Bullet(Spaceship plane){
 myCenterX=plane.getX();
 myCenterY= plane.getY();
 myPointDirection = plane.getPointDirection();
 accelerate(5);
}
public void show(){
stroke(color(255, 255, 0));
strokeWeight(.25);
fill(255,255,150);
ellipse((float)myCenterX,(float)myCenterY,6,6);
}
 public float getX(){
    return (float) myCenterX;
  }

  public float getY(){
    return (float) myCenterY;
  }
}
