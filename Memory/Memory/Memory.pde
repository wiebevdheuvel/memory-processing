int schermIndex = 0;
int col;
boolean spelScherm = false;

void setup() {
  size(1000, 1000);
  col = width/10;
  //tekenOpeningsScherm();
  tekenStartScherm();
}

void draw() {
  if (spelScherm) {
    tekenSpeelscherm();
  }
}

void mousePressed() {

  if (isMuisOpKnop(col*2, col*7.5, col*6, col*2)) {
    schermIndex = schermIndex +1;
    initialiseerSpel();
    spelScherm = true;
    if (schermIndex > 2) {
      schermIndex = 1;
    }
  }
  if (schermIndex == 2) {
    tekenEindScherm();
  }
}


int getCol() {
  return col;
}
