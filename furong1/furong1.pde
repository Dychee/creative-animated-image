PImage img;
float blurScale = 1;

void setup() {
  size(700,756);
  background(255);
  img = loadImage("furong025.jpeg");
  image(img, 0, 0, width, height);
}

void draw() {
  //image(img, 0, 0, width/4, height/4);
  for (int i = 0; i< 100; i ++) {
    float xx = (int)random(width);
    float yy = (int)random(height);
    color fc = img.get(int(xx), int(yy));
    fill(fc);
    noStroke();
    //rotate(random(TWO_PI));
    rect(xx, yy, 30, 30);
  }
}

void keyPressed() {
  if (key == 'a') {
    blurScale ++;
  }
  if (key == 'z') {
    blurScale --;
  }
}
