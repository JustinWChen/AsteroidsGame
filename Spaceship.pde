class Spaceship extends Floater  
{   
    public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8,16,-8,-1};
    yCorners = new int[]{-8,0,8,0};
    myCenterX = 250;
    myCenterY = 250;
    myPointDirection = 0;
    myColor = color(255);
  }
    public void hyperspace(){
    myCenterX = (int) (Math.random()*600)+1;
    myCenterY = (int) (Math.random()*600)+1;
    myXspeed = 0;
    myYspeed = 0;
      myPointDirection = (int) (Math.random()*360)+1;
  }
    public float getX(){
    return (float) myCenterX;
  }

  public float getY(){
    return (float) myCenterY;
  }
}
