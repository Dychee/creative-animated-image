PImage img;
int x, y;

void setup() {
  size(756,1008);
  background(255);
  noStroke();
  img = loadImage("furong025.jpeg");
}

void draw() {
  x = round(random(width));
  y = round(random(height));
  color c = img.get(x, y);
  fill(c, 70);
  ellipse(x, y, 30, 30);
  
}
