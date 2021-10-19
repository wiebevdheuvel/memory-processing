

void tekenKnop(String text, float x, float y, float knopBreedte, float knopHoogte) {
  fill(255);
  rect(x, y, knopBreedte, knopHoogte);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(knopBreedte*0.10);
  text(text, x + knopBreedte/2, y + knopHoogte/2 );
}

boolean isMuisOpKnop(float x, float y, float knopBreedte, float knopHoogte) {
  if (mouseX >= x && mouseX <= x + knopBreedte
    && mouseY >= y && mouseY <= y+ knopHoogte) {
    return true;
  } else {
    return false;
  }
}

//algemene knop funtie
