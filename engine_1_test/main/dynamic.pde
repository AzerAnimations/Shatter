class DynamicObject extends Object {
  float xVector, yVector;
  
  DynamicObject(float inX, float inY, int animDuration, int[] sprites) {
    super.x = inX;
    super.y = inY;
    super.animationLength = animDuration;
    super.spriteCode = sprites;
  }
  
  boolean lateralCollision(Object collider) {
    
    
    // check whether the object is aligned vertically for a collision
    float a = this.top();
    float b = this.bottom();
    if ( (a >= collider.top() & a <= collider.bottom() ) || ( b >= collider.top() & b <= collider.bottom()) ) {
      
      
      
      // check to see if the object is to the left or to the right of the collider
      
      if (this.right() <= collider.left()) {
        if ( ( collider.left() - this.right() ) < xVector) {
          xVector = collider.left() - this.right();
          return true;
        }
      }
      
      //println(this.left() > collider.right());
      
      if (this.left() >= collider.right()) {
        if ( ( collider.right() - this.left() ) > xVector) {
          xVector = collider.right() - this.left();
          return true;
        }
      }
      
    }
    return false;
  }
  
  void move() {
    super.x += xVector;
    super.y += yVector;
  }
}