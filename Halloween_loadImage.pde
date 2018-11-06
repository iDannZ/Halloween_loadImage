//Click and Drag your cursor to "carve" the pumpkins

PImage img;
Rain r1;
int numDrops = 1000;
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
