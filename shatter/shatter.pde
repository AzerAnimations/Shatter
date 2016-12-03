//Main class, has setup and draw functions
PImage characterSprite;
player boi;

void setup() {
  
  size(1024, 512);
  frameRate = 60;
  
  characterSprite = loadImage("starterPlayer.png");
  
  boi = new player(50, 100, characterSprite);
  
}

void draw() {
  clear();
  boi.move();
  boi.drawCharacter();
  
}

void keyPressed() {
  boi.step();
}
  