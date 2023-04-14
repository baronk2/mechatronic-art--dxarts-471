int[] rgb;
int[] changer;
int MULTIPLIER = 5;

void setup() {
  size(200, 200);
  //size(1920, 1080);
  rgb = new int[3];
  for (int i = 0; i < 3; i++) {
    rgb[i] = int(random(256));
  }
  size(1920, 1080);
  changer = new int[3];
}

void draw() {
  background(rgb[0], rgb[1], rgb[2]);
  for (int i = 0; i < 3; i++) {
    changer[i] = MULTIPLIER * (int(random(2)) * 2 - 1);
    rgb[i] += changer[i];
    if (rgb[i] < 255) {
      rgb[i]-= 255;
    } else if (rgb[i] > 0) {
      rgb[i]+= 255;
    }
  }
  delay(1);
}
