final int ZIJDE = 100;
final int AANTAL = 5;

int nOmgedraaideKaart = 0;

int score;

void initialiseerSpel() {

  background(150);

  calcKaartenPos();
  laadKaarten();
  calcKaartenWaarde();
  shuffleKaarten();
}

void tekenSpeelscherm() {
  
  background(150);
  tekenKaarten();
  tekenPunten();
}

void tekenPunten() {
}

void checkKaarten() {

  if (kaartenWaarde[eersteKaartIndex] == kaartenWaarde[tweedeKaartIndex]) {
    println("match ");
    score++;
    kaartenWaarde[eersteKaartIndex] = -1;
    kaartenWaarde[tweedeKaartIndex] = -1;
  } else { 
    if (kaartenWaarde[eersteKaartIndex] == 66 || kaartenWaarde[tweedeKaartIndex] == 66) {
      score--;
      println("doodskaart gevonden - 1 punt");
    }
    println("geen match ");
    draaiKaart(eersteKaartIndex); 
    draaiKaart(tweedeKaartIndex);
  }
}

int getScore() {
  return score;
}
