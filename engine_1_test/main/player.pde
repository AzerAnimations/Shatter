class Character extends DynamicObject {
  int latency;
  Character(float inX, float inY, int animLength, int[] spriteCodes) {
    super(inX, inY, animLength, spriteCodes);
    latency = 0;
  }
  
  
  // Separate functions for each action
  
  void jump(float strength) {
    if (onGround & keyPressed & key == 'w') {
      yVector = -1 * strength;
    }
  }
  
  //void move() {
  //  latency -= 1;
  //  if (latency < 1) {
  //    xVector = 0;
  //  }
    
  //  super.move();
  //}
  
  void keyMove(float speed) {
    
    
    if (keyPressed & key == 'a') {
      xVector = -1 * speed;
    }
    
    else if (keyPressed & key == 'd') {
      xVector = speed;
    }
    
    else if (onGround){
      xVector = 0;
    }
  }
  
  
}