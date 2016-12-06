playerMain character = new playerMain(10.0, 400.0, 2);
void setup() {
  size(1024, 512);
    
  PImage character1 = loadImage("wizard_1.png");
  PImage character2 = loadImage("wizard_2.png");
  PImage terrain1 = loadImage("dirt_1.png");
  
  character.sprite1 = character1;
  character.sprite2 = character2;
  
  frameRate(60);

  
}

void draw() {
  clear();
  character.paint();
  //character.updateFrame();
  character.moveLateral(0);
}

void keyPressed() {
  character.updateFrame();
  character.moveLateral(10);
}