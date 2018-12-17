class NoseLaser {
  PVector position=new PVector();
  float speed;
  boolean active=false;
  NoseLaser(float x, float y, float speed) {
    position.x=x;
    position.y=y;
    this.speed=speed;
  }
  void update() {
    position.x+=speed;
    fill(196, 26, 26);
    ellipse(position.x+185, position.y, 15, 15);
    if (position.x<width) {
      active=false;
    }
  }

  boolean inactive() {
    return active;
  }
  boolean testCollision(PVector eLocation) {
    if (position.x>=eLocation.x-75
      && position.y>=eLocation.y-75 
      && position.y<=eLocation.y+75)
      return true;
    return false;
  }
}
