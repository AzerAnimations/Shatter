int[] block1Img = {2};
int[] block2Img = {4};
int[] block2LeftImg = {3};
int[] block2RightImg = {5};

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

class Block2Left extends StaticObject {
  Block2Left(float inX, float inY) {
    super(inX, inY, 1, block2LeftImg);
  }
}

class Block2Right extends StaticObject {
  Block2Right(float inX, float inY) {
    super(inX, inY, 1, block2RightImg);
  }
}