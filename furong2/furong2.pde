PImage img;
float s;

void setup() {
  size(756,1008);
  background(255);
  noStroke();
  img = loadImage("furong025.jpeg");
}

void draw() {
  background(0);
  s = map(mouseX, 0, width, 1, 100);
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
      int loc = x + (y * img.width);
      fill(img.pixels[loc]);
      ellipse(x, y, s, s);
    }
  }
}
