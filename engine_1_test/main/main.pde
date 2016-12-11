ArrayList<PImage> sprites = new ArrayList<PImage>();
StaticObject[] blocks = new StaticObject[10];

int[] slimeImg = {0, 1};

Character slime = new Character(100, 30, 20, slimeImg);


void setup() {
  size(512, 512);
  loadImages(5);
  
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
  println(keyPressed);
  slime.jump(10);
  slime.keyMove(2);
  
  collide();

  slime.move();
  slime.paint();
  drawGround();
}

void createGround() {
  for (int i = 0; i < blocks.length; i++) {
    blocks[i] = new Block2(i * sprites.get(2).width, 420);
  }
}

void drawGround() {
  for (StaticObject tile : blocks) {
    tile.paint();
  }
}


void collide() {
  slime.onGround = slime.verticalFullCollision(blocks);
  //println(slime.onGround);
}
    
  