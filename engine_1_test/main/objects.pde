class Object {
  float x, y;
  int animationLength, frame;
  int[] spriteCode;
  
  
  int getCurrentFrame() {
    if ((frameCount % animationLength) == 0) {
      
      frame += 1;
      
      if ( frame == spriteCode.length) {
        frame = 0;
      }
    }
    
    return frame;
  }
  
  float left() {
    return x;
  }
  
  float right() {
    return x + sprites.get(spriteCode[frame]).width;
  }
  
  float top() {
    return y;
  }
  
  float bottom() {
    return y + sprites.get(spriteCode[frame]).height;
  }
  
  void paint() {
    int cFrame = getCurrentFrame();
    image(sprites.get(spriteCode[frame]), x, y);
    //image(sprites.get(1), x, y);
  }
}