ArrayList<PImage> sprites = new ArrayList<PImage>();

int[] slimeImg = {0, 1};
int[] blockImg = {2};

DynamicObject slime = new DynamicObject(200, 280, 20, slimeImg);
StaticObject block = new StaticObject(100, 290, 20, blockImg);
StaticObject block2 = new StaticObject(300, 300, 20, blockImg);

void setup() {
  size(512, 512);
  loadImages(2);
  
  slime.xVector = -1;
  
  
  
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
  
  if (slime.lateralCollision(block)) {
    slime.xVector = 1;
  }
  
  if (slime.lateralCollision(block2)) {
    slime.xVector = -1;
  }
  
  slime.move();
  slime.paint();
  block.paint();
  block2.paint();
  }

  