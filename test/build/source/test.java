import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class test extends PApplet {

playerMain character = new playerMain(10.0f, 400.0f, 2);
grass[] testBlocks = new grass[18];
public void setup() {
  

  PImage character1 = loadImage("wizard_1.png");
  PImage character2 = loadImage("wizard_2.png");
  PImage terrain1 = loadImage("grass1.png");

  for (int i = 0; i < testBlocks.length; i++) {
    testBlocks[i] = new grass(terrain1, i * terrain1.width, 457);
  }

  character.sprite1 = character1;
  character.sprite2 = character2;

  frameRate(60);

}

public void draw() {
  clear();
  background(255,255,255);
  character.paint();
  //character.updateFrame();
  character.moveLateral(0);

  for (int i = 0; i < testBlocks.length; i++) {
    testBlocks[i].paint();
  }
}

public void keyPressed() {
  character.updateFrame();
  character.moveLateral(5);
}
//PImage grassSprite = loadImage("dirt_1.png");


class staticObject {
  float x,y,objectHeight, objectWidth;
  PImage sprite;
  
  //staticObject(float xPos, float yPos) {
  //  this.x = xPos;
  //  this.y = yPos;
  //}
  
  public float top() {
    return this.y;
  }
  
  public float bottom() {
    return (this.y + objectHeight);
  }
  
  public float left() {
    return this.x;
  }
  
  public float right() {
    return this.x + objectWidth;
  }
  
  public void paint() {
    image(sprite, x, y);
  }
  
}

class grass extends staticObject {
  grass(PImage grassSprite, float xPos, float yPos) {
    x = xPos;
    y = yPos;
    sprite = grassSprite;
    objectWidth = sprite.width;
    objectHeight = sprite.height;
  }
}
class playerMain {
  
  float x,y, yVector,lastx;
  PImage sprite1, sprite2;
  int animSpeed, frame;
  
  playerMain(float xpos, float ypos, int speed) {
    this.x = xpos;
    this.y = ypos;
//    this.sprite1 = frame1;
//    this.sprite2 = frame2;
    this.animSpeed = speed;
    //this.xVector = 0;
    this.yVector = 0;
    this.lastx = x;
    
    frame = 0;
    if (animSpeed < 1) {
      animSpeed = 1;
    };
  }
  
  public void moveLateral(float speed) {
    this.lastx = x;
    this.x += speed;
  }
  
  public boolean hasMoved() {
    return this.x != this.lastx;
  }
  
  //void moveVertical(float speed) {
  //  this.y += speed;
  //}
  
  public void paint() {
    if (frame < animSpeed) {
      image(sprite1, x, y);
    }
    
    else if (frame <= 2 * animSpeed) {
      image(sprite2, x, y);
    }

  }
  
  public void updateFrame() {
    frame += 1;
    if (frame > animSpeed * 2){
      frame = 0;
    };
  }
  
  
}
  public void settings() {  size(1024, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "test" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
