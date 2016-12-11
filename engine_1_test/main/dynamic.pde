class DynamicObject extends Object {
  float xVector, yVector;
  boolean onGround;
  
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
  
  
  boolean verticalCollision(Object collider) {
    
    
    // check whether the object is aligned vertically for a collision
    float a = this.left();
    float b = this.right();
    if ( (a >= collider.left() & a <= collider.right() ) || ( b >= collider.left() & b <= collider.right()) ) {
      
      
      
      // check to see if the object is to the left or to the right of the collider
      
      if (this.bottom() <= collider.top()) {
        if ( ( collider.top() - this.bottom() ) < yVector) {
          yVector = collider.top() - this.bottom();
          return true;
        }
      }
      
      //println(this.left() > collider.right());
      
      if (this.top() >= collider.bottom()) {
        if ( ( collider.bottom() - this.top() ) > yVector) {
          yVector = collider.bottom() - this.top();
          return true;
        }
      }
      
    }
    return false;
  }
  
  boolean verticalFullCollision( Object[] colliders) {
    for (Object collider : colliders) {
      if (verticalCollision(collider)) {
        //println(true);
        return true;
      }
    }
    //println(false);
    return false;
  }
  
  boolean lateralFullCollision(Object[] colliders) {
    boolean result = false;
    for (Object collider: colliders) {
      if (lateralCollision(collider)) {
        result = true;
      }
    }
    //println(result);
    return result;
  }
  
  void gravity(){
    yVector += .5;
    if (yVector > 10) {
      yVector = 10;
    }
  }
  
  void move() {
    super.x += xVector;
    super.y += yVector;
  }
}