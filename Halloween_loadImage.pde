/* @pjs preload="cinderellas-castle-drawing-62.jpg"; */
PImage img;
Rain r1;
int numDrops = 10000;
Rain[] drops = new Rain[numDrops];
void setup() {
  size(570, 760);
  img = loadImage("cinderellas-castle-drawing-62.jpg");

  image (img, 0, 0);
  //Loop through array to create each object
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
  }
}



void draw() {



  //Loop through array to use objects.
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
  }
}


class Rain {
  float r = random(500);
  float y = random(-height);

  void fall() {
    y = y + 7;
    if (mousePressed) {
      fill(25, 25, 25, 99);
      stroke(25, 25, 25, 180);
      rect(y, r, 1, 1);
      fill(25,250,25,180);
      stroke(25,250,25,180);
      rect(r, y, 1, 1);
    
    } else {
    }
    if (y>height) {
      r = random(760);
      y = random(-200);
    }
  }
}
