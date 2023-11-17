class Star //note that this class does NOT extend Floater
{
  private int myX,myY;
  public Star(){
  myX = (int)(Math.random()*501);
  myY = (int)(Math.random()*501);
  }
  public void show(){
    noStroke();
  fill(255,(int)(Math.random()*60)+110);
  ellipse (myX,myY,5,5);
  }
}
