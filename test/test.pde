playerMain character = new playerMain(10.0, 400.0, 2);
grass[] testBlocks = new grass[18];
void setup() {
  size(1024, 512);

  PImage character1 = loadImage("enemy_barbarian_1.png");
  PImage character2 = loadImage("wizard_2.png");
  PImage terrain1 = loadImage("grass1.png");

  for (int i = 0; i < testBlocks.length; i++) {
    testBlocks[i] = new grass(terrain1, i * terrain1.width, 457);
  }

  character.sprite1 = character1;
  character.sprite2 = character2;

  frameRate(60);

}

void draw() {
  clear();
  background(255,255,255);
  character.paint();
  //character.updateFrame();
  character.moveLateral(0);

  for (int i = 0; i < testBlocks.length; i++) {
    testBlocks[i].paint();
  }
}

void keyPressed() {
  character.updateFrame();
  character.moveLateral(5);
}
