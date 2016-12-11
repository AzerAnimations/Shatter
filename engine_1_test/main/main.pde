ArrayList<PImage> sprites = new ArrayList<PImage>();
StaticObject[] blocks = new StaticObject[12];

int[] slimeImg = {0, 1};

Character slime = new Character(100, 30, 20, slimeImg);



float cameraX = 0;
float cameraY = 0;


void setup() {
  size(512, 512);
  loadImages(8);
  
  createGround();
  
  
  
}

boolean loadImages(int max) {
  try {
    for (int i = 0; i < max + 1; i++) {
      sprites.add(loadImage(i + ".png"));
    }
    
    return true;
  } catch(Exception e) {
    return false;
  }
}

void draw() {
  background(200,200,200);
  slime.gravity();
  //println(keyPressed);
  slime.jump(10);
  slime.keyMove(2);
  
  collide();

  slime.move();
  slime.paint();
  drawGround();
}

void createGround() {
  for (int i = 1; i < 8; i++) {
    blocks[i] = new Dirt1(i * sprites.get(2).width, 450);
  }
  
  blocks[8] = new Block1 (200, 356);
  blocks[0] = new Dirt1Left (0, 450);
  blocks[9] = new Dirt1Right (8 * 64, 450);
  
  blocks[10] = new Block1 (300, 280);
  blocks[11] = new Block1 (400, 356);
}

void drawGround() {
  for (StaticObject tile : blocks) {
    tile.paint();
  }
}


void collide() {
  slime.onGround = slime.verticalFullCollision(blocks);
  println(slime.lateralFullCollision(blocks));
  //println(slime.onGround);
}
    
  