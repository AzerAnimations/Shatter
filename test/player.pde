class playerMain {
  
  float x,y, yVector,lastx;
  PImage sprite1, sprite2;
  int animSpeed, frame;
  
  playerMain(float xpos, float ypos, int speed) {
    this.x = xpos;
    this.y = ypos;
//    this.sprite1 = frame1;
//    this.sprite2 = frame2;
    this.animSpeed = speed;
    //this.xVector = 0;
    this.yVector = 0;
    this.lastx = x;
    
    frame = 0;
    if (animSpeed < 1) {
      animSpeed = 1;
    };
  }
  
  void moveLateral(float speed) {
    this.lastx = x;
    this.x += speed;
  }
  
  boolean hasMoved() {
    return this.x != this.lastx;
  }
  
  //void moveVertical(float speed) {
  //  this.y += speed;
  //}
  
  void paint() {
    if (frame < animSpeed) {
      image(sprite1, x, y);
    }
    
    else if (frame <= 2 * animSpeed) {
      image(sprite2, x, y);
    }

  }
  
  void updateFrame() {
    frame += 1;
    if (frame > animSpeed * 2){
      frame = 0;
    };
  }
  
  
}