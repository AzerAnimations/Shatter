class StaticObject extends Object {
  
  StaticObject(float inX, float inY, int animDuration, int[] sprites) {
    super.x = inX;
    super.y = inY;
    super.animationLength = animDuration;
    super.spriteCode = sprites;
  }
}