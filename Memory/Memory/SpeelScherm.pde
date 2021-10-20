final int ZIJDE = 100;
final int AANTAL = 5;

int nOmgedraaideKaart = 0;

void initialiseerSpel() {

  background(#B7EFFF);

  calcKaartenPos();
  laadKaarten();
  calcKaartenWaarde();
  shuffleKaarten();
}

void tekenSpeelscherm() {
  tekenKaarten();
  tekenPunten();
  checkKaarten();
  println(nOmgedraaideKaart);
}

void tekenPunten() {
}

void tekenDoodsKaarten() {
}

void checkKaarten() {
  
  if (nOmgedraaideKaart == 2) {
    delay(1000);
    for (int i=0; i<kaartenWaarde.length; i++) {
      if (kaartenWaarde[i] < 100) {
        draaiKaart(i);
      }
    }
  }
}
