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

public class shatter extends PApplet {

//Main class, has setup and draw functions
PImage characterSprite;
player boi;

public void setup() {
  
  
  frameRate = 60;
  
  characterSprite = loadImage("starterPlayer.png");
  
  boi = new player(50, 100, characterSprite);
  
}

public void draw() {
  clear();
  boi.move();
  boi.drawCharacter();
  
}

public void keyPressed() {
  boi.step();
}
  

// Player class

class player {
  int xPosition, yPosition, xVector, yVector;
  PImage sprite1;
  PImage sprite2;

  player (int x,int y, PImage sprite) {

    xPosition = x;
    yPosition = y;

    xVector = 0;
    yVector = 0;

    sprite1 = sprite;

  }

  public void move() {
    xPosition += xVector;
    yPosition += yVector;
    if (xVector != 0) {
     xVector += -1 * (abs(xVector) / xVector);
    }


}

public void drawCharacter() {
  image(sprite1, xPosition, yPosition);
}

public void step() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      xVector -= 5;
      if (xVector < -10) {
        xVector = -10;
      }
    }
    if (keyCode == RIGHT) {
      xVector += 5;
      if (xVector > 10) {
        xVector = 10;
      }
    }
  }
}
}
  public void settings() {  size(1024, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "shatter" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
