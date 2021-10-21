void tekenScore() {
  
  fill(150);
  rectMode(CENTER);
  noStroke();
  rect(col*4.5, col*1, 100, 100);
  fill(255);
  text(score, col*4.5, col*1);
  
  //if (!spelScherm && score == 2) {
  //  tekenEindScherm();
  //}
  
  if (score == 2) {
    spelScherm = false;
    tekenEindScherm();
  }
}

void berekenPunten() {
}
