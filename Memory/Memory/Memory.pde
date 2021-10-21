int schermIndex = 0;
int col;
boolean spelScherm = false;


void setup() {

  size(1000, 1000);
  col = width/10;
  tekenStartScherm();
}

void draw() {

  if (spelScherm) {
    tekenSpeelscherm();
    tekenScore();
  } 
}

void mousePressed() {

  if (!spelScherm && isMuisOpKnop(col*2, col*4, col*6, col*2)) {
    schermIndex = schermIndex +1;
    initialiseerSpel();
    spelScherm = true;
    if (schermIndex > 2) {
      schermIndex = 1;
     
    }
  }
}

void mouseReleased() {

  if (spelScherm) {
    if (nOmgedraaideKaart == 2) {
      nOmgedraaideKaart = 0;
      checkKaarten();
    } else { 
      int muisOverKaart = isMuisOverKaart();
      if (muisOverKaart != - 1) {
        draaiKaart(muisOverKaart);
      }
    }
  }
}

int getCol() {
  return col;
}




// nog te doen
//teken score bij eindscherm
//doodskaart moet direct naar game over
//wanneer max punten teken eindscherm
//restart functie
