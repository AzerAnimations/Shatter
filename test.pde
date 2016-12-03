PImage testImg;

int playerX = 200;
int playerY = 200;
int playerXVector = 0;
int playerYVector = 0;

void setup() {
  size(512,512);
  
  testImg = loadImage("sprite1.png");
}

void draw(){
  clear();
  gravity(1, 10);
  collision();
  playerX += playerXVector;
  playerY += playerYVector;
  image(testImg, playerX, playerY);
  delay(1);
}

void gravity(int g, int max){
  if (playerYVector < max) {
    playerYVector += g;
    if (playerYVector > max) {
      playerYVector = int(-1 * abs(max));
    }
  }
}

void collision() {
  if ((playerY > 400) && (playerYVector > 0)) {
    playerYVector *= -2;
  }
}