//PImage grassSprite = loadImage("dirt_1.png");


class staticObject {
  float x,y,objectHeight, objectWidth;
  PImage sprite;
  
  //staticObject(float xPos, float yPos) {
  //  this.x = xPos;
  //  this.y = yPos;
  //}
  
  float top() {
    return this.y;
  }
  
  float bottom() {
    return (this.y + objectHeight);
  }
  
  float left() {
    return this.x;
  }
  
  float right() {
    return this.x + objectWidth;
  }
  
  void paint() {
    image(sprite, x, y);
  }
  
}

class grass extends staticObject {
  grass(PImage grassSprite, float xPos, float yPos) {
    x = xPos;
    y = yPos;
    sprite = grassSprite;
    objectWidth = sprite.width;
    objectHeight = sprite.height;
  }
}