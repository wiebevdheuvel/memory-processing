
void tekenStartScherm() {
  background(#6DF5CB);
  tekenKnop("Start", col*2, col*7.5, col*6, col*2);
  kiesAantalSetjes();
  kiesAantalSpelers();
}


void kiesAantalSpelers() {
  fill(0);
  textSize(40);
  text("Aantal spelers", col*2, col*2);
  // tekenDrieHoek();
}



boolean isMuisOpDriehoek() {
  if (mouseX > col*2 && mouseX < col*2 + col*6
    && mouseY > col*4 && mouseY < col*4+ col*2) {
    return true;
  } else {
    return false;
  }
}

void kiesDoodsKaarten() {
}

void kiesAantalSetjes() {
  float y = col*4.5;

  String [] setjes = {"12", "14", "16", "18", "20"};

  textSize(40);
  text("Aantal setjes", col*3.5, col*4);

  float x = col*2.5;

  for (int i=0; i<setjes.length; i++) {
    tekenKnop(setjes[i], x, y, 100, 100);


    if (isMuisOpKnop(x, y, 100, 100)) {
      println(setjes[i]);
    }
    x += col;
  }
}
