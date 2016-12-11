int[] block1Img = {2};
int[] block2Img = {4};

class Block1 extends StaticObject {
  Block1(float inX, float inY) {
    super(inX, inY, 1, block1Img);
  }
}

class Block2 extends StaticObject {
  Block2(float inX, float inY) {
    super(inX, inY, 1, block2Img);
  }
}