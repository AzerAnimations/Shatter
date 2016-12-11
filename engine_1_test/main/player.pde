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
  
  void move() {
    
    super.move();
    
    cameraX = x - 100;
  }
  
  void keyMove(float speed) {
    
    println(xVector);
    
    
    if (onGround & !keyPressed){
      xVector = 0;
    }
    if (keyPressed & key == 'a') {
      xVector = -1 * speed;
    }
    
    else if (keyPressed & key == 'd') {
      xVector = speed;
    }
    
  }
  
  
}