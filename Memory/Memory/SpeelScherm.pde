final int ZIJDE = 100;
final int AANTAL = 5;

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
}

void tekenPunten() {
}

void tekenDoodsKaarten() {
}
