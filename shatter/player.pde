// Player class

class player {
  int xPosition, yPosition, xVector, yVector;
  PImage sprite1;
  PImage sprite2;
  
  player (int x,int y, PImage sprite) {
    
    xPosition = x;
    yPosition = y;
    
    xVector = 0;
    yVector = 0;
    
    sprite1 = sprite;
    
  }
  
  void move() {
    xPosition += xVector;
    yPosition += yVector;
    if (xVector != 0) {
     xVector += -1 * (abs(xVector) / xVector);
    }
    
  
}

void drawCharacter() {
  image(sprite1, xPosition, yPosition);
}

void step() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      xVector -= 5;
      if (xVector < -10) {
        xVector = -10;
      }
    }
    if (keyCode == RIGHT) {
      xVector += 5;
      if (xVector > 10) {
        xVector = 10;
      }
    }
  }
}
}