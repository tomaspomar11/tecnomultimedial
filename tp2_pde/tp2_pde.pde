// Alumno: Tomas Pomar
// Profesor: Tobias Albirosa
// Link a video:https://www.youtube.com/watch?v=i5FED4ul710&ab_channel=SpookyAM

PImage espiral;
float theta;
float s;
float spinamt;
float reduction;
int count;

void setup() {
  size(800, 400);
  noStroke();
  reduction = 0.5;

  espiral = loadImage("espiral.png");
  imageMode(CENTER);
}

void draw() {
  background(255);

  float imageSize = min(width / 2, height); 

  image(espiral, width / 4, height / 2, imageSize, imageSize);

  pushMatrix();
  translate(width * 3 / 4, height / 2);

  count = 1;
  float ratio = 0;
  float parametric = map(mouseY, 0, height, 0, 0.5);
  float x1, y1, x2, y2, x3, y3, x4, y4;
  float d = imageSize / 2 * reduction;
  float a;
  x1 = -imageSize / 2;
  y1 = -imageSize / 2;
  x2 = imageSize / 2;
  y2 = -imageSize / 2;
  x3 = imageSize / 2;
  y3 = imageSize / 2;
  x4 = -imageSize / 2;
  y4 = imageSize / 2;

  while (count < 1000 && d > 1) {
    if (count == 2) {
      ratio = x1 / (imageSize / 2);
    }
    if (count % 2 == 0) {
      fill(255);
    } else {
      fill(0);
    }

    quad(x1, y1, x2, y2, x3, y3, x4, y4);

    x1 = x1 + (x2 - x1) * parametric;
    y1 = y1 + (y2 - y1) * parametric;

    d = dist(x1, y1, 0, 0);
    a = atan2(y1, x1);
    x2 = d * cos(a + PI / 2);
    y2 = d * sin(a + PI / 2);

    x3 = d * cos(a + PI);
    y3 = d * sin(a + PI);

    x4 = d * cos(a + 3 * PI / 2);
    y4 = d * sin(a + 3 * PI / 2);

    count += 1;
  }
  popMatrix();

  loadPixels();
  int countred = 0;

  for (int i = 0; i < pixels.length; i++) {
    if (pixels[i] == color(0)) {
      countred++;
    }
  }
}
