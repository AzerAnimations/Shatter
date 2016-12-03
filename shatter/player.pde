// Player class

class player {
  int xPosition, yPosition, xVector, yVector;
  PImage sprite1;
  PImage sprite2;
  
  player (int x,int y, String pathfile1) {
    
    xPosition = x;
    yPosition = y;
    
    xVector = 0;
    yVector = 0;
    
    sprite1 = loadImage(pathfile1);
  }
  
  void move() {
    xPosition += xVector;
    yPosition += yVector;
  
}

void draw() {
  image(sprite, xPosition, yPosition);
}

void step() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      xVector -= 1;
      if (xVector < -10) {
        xVector = -10;
      }
    }
    if (keyCode == RIGHT) {
      xVector += 1;
      if (xVector > 10) {
        xVector = 10;
      }
    }
  }
}