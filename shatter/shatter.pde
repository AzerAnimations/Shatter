//Main class, has setup and draw functions
PImage characterSprite;
void setup() {
  
  size(1024, 512);
  frameRate = 60;
  
  player boi = new player(50, 50, "starterPlayer.png");
  
  
}

void Draw() {
  image(characterSprite, 50, 50);
  
}