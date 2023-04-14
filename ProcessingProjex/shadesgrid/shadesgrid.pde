size(200, 200);
int[][] shades = new int[9][9];
for (int i = 0; i <= 8; i++) {
  for (int j = 0; j <= 8; j++){
    shades[i][j] = int(random(256));
  }
}
for (int i = 0; i <= 8; i++) {
  for (int j = 0; j <= 8; j++){
    fill(shades[i][j]);
    rect(10 + 20 * i, 10 + 20 * j, 10, 10);
  }
}
