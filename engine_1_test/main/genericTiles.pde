int[] block1Img = {2};

int[] block2Img = {4};
int[] block2LeftImg = {3};
int[] block2RightImg = {5};

int[] dirt1RightImg = {8};
int[] dirt1MidImg = {7};
int[] dirt1LeftImg = {6};

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

class Dirt1 extends StaticObject {
  Dirt1(float inX, float inY) {
    super(inX, inY, 1, dirt1MidImg);
  }
}

class Dirt1Left extends StaticObject {
  Dirt1Left(float inX, float inY) {
    super(inX, inY, 1, dirt1LeftImg);
  }
}

class Dirt1Right extends StaticObject {
  Dirt1Right(float inX, float inY) {
    super(inX, inY, 1, dirt1RightImg);
  }
}