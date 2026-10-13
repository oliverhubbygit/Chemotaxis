Walker [] colony;
void setup() {
  size(850, 850);
  frameRate(10);
  noStroke();
  colony = new Walker[(int)(Math.random()*30)+10];
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Walker();
  }
}
void draw() {
  background(0);
  for (int i=0; i<colony.length; i++)
  {
    colony[i].walk();
    colony[i].show();
  }
}

/*
class Jumper
 {
 int myX, myY;
 Jumper()
 {
 myX = 250;
 myY = 250;
 }
 void jump()
 {
 myX = (int)(Math.random()*500);
 myY = (int)(Math.random()*500);
 }
 void show(){
 ellipse(myX,myY,50,50);
 }
 }
 */

class Walker
{
  int myX, myY, filly;
  Walker()
  {
    myX = 0;
    myY = 0;
    filly = 0;
  }
  void walk() {
    if (myX > mouseX) {
      myX -= (int)(Math.random() * 20) + 1;
    } else if (myX < mouseX) {
      myX += (int)(Math.random() * 20) + 1;
    }

    if (myY > mouseY) {
      myY -= (int)(Math.random() * 20) + 1;
    } else if (myY < mouseY) {
      myY += (int)(Math.random() * 20) + 1;
    }
  }
  void show() {
    filly = (int)(255 - dist(myX, myY, mouseX, mouseY) / 2);
    filly = constrain(filly, 10, 255);
    fill(filly/10, filly, filly/10);
    ellipse(myX, myY, 15+(int)(Math.random()*15)+2, 15+(int)(Math.random()*15)+2);
    if (filly < 50) {
      fill(255, 255, 255);
      textSize(24);
      int chance = (int)(Math.random()*50)+1;
      if (chance == 1) {
        chance = (int)(Math.random()*4)+1;
        if (chance == 1) {
          text("It's so dark!", myX+10, myY+20);
        } else if (chance == 2) {
          text("Eek!", myX+10, myY+20);
        } else if (chance == 3) {
          text("Psst!", myX+10, myY+20);
        } else if (chance == 4) {
          text("Where am I?", myX+10, myY+20);
        }
      }
    }
    if (filly > 50) {
      fill(255, 255, 255);
      textSize(24);
      int chance = (int)(Math.random()*50)+1;
      if (chance == 1) {
        chance = (int)(Math.random()*4)+1;
        if (chance == 1) {
          text("Hey whatsup?", myX+10, myY+20);
        } else if (chance == 2) {
          text(":D", myX+10, myY+20);
        } else if (chance == 3) {
          text("I can see!", myX+10, myY+20);
        } else if (chance == 4) {
          text("It's so beautiful!", myX+10, myY+20);
        }
      }
    }
  }
}
