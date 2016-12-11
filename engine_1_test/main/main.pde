ArrayList<PImage> sprites = new ArrayList<PImage>();

int[] slimeImg = {0, 1};
int[] blockImg = {2};

DynamicObject slime = new DynamicObject(200, 30, 20, slimeImg);
StaticObject block = new StaticObject(200, 400, 20, blockImg);

void setup() {
  size(512, 512);
  loadImages(2);
  
  slime.yVector = 0;
  
  
  
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
  slime.lateralCollision(block);
  if (slime.verticalCollision(block)) {
    slime.yVector = -5 - random(10);
  }
  
  slime.move();
  slime.paint();
  block.paint();
  }

  