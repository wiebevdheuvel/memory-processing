PImage[] kaarten = new PImage[25];
PImage achterkant; 

int[] kaartenWaarde = new int[25];
int eersteKaartIndex;
int tweedeKaartIndex;

ArrayList<int[]> kaartenPos = new ArrayList<int[]>();  

void laadKaarten() { 

  int waarde = 0;

  for (int i = 0; i < kaartenWaarde.length -1; i += 2) {
    kaarten[i] = loadImage("kaart" + waarde + ".png");
    kaarten[i + 1] = loadImage("kaart" + waarde + ".png");

    kaarten[i].resize(ZIJDE, ZIJDE);
    kaarten[i + 1].resize(ZIJDE, ZIJDE);

    waarde++;
  }
  kaarten[kaarten.length - 1] = loadImage("kaart66.png");
  achterkant = loadImage("achterkant.png");

  kaarten[kaarten.length - 1].resize(ZIJDE, ZIJDE);
  achterkant.resize(ZIJDE, ZIJDE);
}

void calcKaartenPos() {

  int x = (width - (ZIJDE*AANTAL)) / 2 - (ZIJDE / 2);
  int y = (height - (ZIJDE*AANTAL)) / 2 - (ZIJDE / 2);

  for (int i=0; i < AANTAL; i++) {
    for (int n=0; n < AANTAL; n++) {
      kaartenPos.add(new int[] {x, y});
      x=x +  ZIJDE + 20;
    }
    x = (width - (ZIJDE*AANTAL)) / 2 - (ZIJDE / 2);
    y += ZIJDE + 20;
  }
}

void tekenKaarten() {

  int[] temp = new int[2];

  for (int i = 0; i < kaartenPos.size(); i++) {
    temp = kaartenPos.get(i);
    if (kaartenWaarde[i] != -1) {

      tekenKaart(temp[0], temp[1], i);
    }
  }
}

void tekenKaart(int x, int y, int index) {

  if (kaartenWaarde[index] >= 100) {  // <= 100 voor testen
    image(achterkant, x, y);
  } else {
    image(kaarten[index], x, y);
  }
}

void calcKaartenWaarde() {

  int waarde = 0;

  for (int i = 0; i < kaartenWaarde.length -1; i += 2) {
    kaartenWaarde[i] = waarde + 100;
    kaartenWaarde[i + 1] = waarde + 100;

    waarde++;
  }
  kaartenWaarde[kaartenWaarde.length - 1] = 66 + 100;
}

void shuffleKaarten() {

  int index1, index2, temp;
  PImage temp2;

  for (int i = 0; i < kaartenWaarde.length; i++) {

    index1 = round(random(0, kaartenWaarde.length - 1));
    index2 = round(random(0, kaartenWaarde.length - 1));

    temp = kaartenWaarde[index1];
    temp2 = kaarten[index1];

    kaartenWaarde[index1] = kaartenWaarde[index2];
    kaartenWaarde[index2] = temp;

    kaarten[index1] = kaarten[index2];
    kaarten[index2] = temp2;
  }
}

int isMuisOverKaart() {

  int[] temp;

  for (int i = 0; i < kaartenPos.size(); i++) {
    temp = kaartenPos.get(i);
    if (mouseX >= temp[0] && mouseX <= temp[0] + ZIJDE && mouseY >= temp[1] && mouseY <= temp[1] + ZIJDE) {
      return i;
    }
  }
  return -1;
}

void draaiKaart(int index) {

  int kaartWaarde = kaartenWaarde[index];

  tekenKaarten();

  if (kaartWaarde >= 100) {
    kaartenWaarde[index] -= 100;
    if (nOmgedraaideKaart == 0) {
      eersteKaartIndex = index;
    } 
    if (nOmgedraaideKaart == 1) {
      tweedeKaartIndex = index;
    }
    nOmgedraaideKaart++;
  } else { 
    kaartenWaarde[index] += 100;
    nOmgedraaideKaart = 0;
  }
}
