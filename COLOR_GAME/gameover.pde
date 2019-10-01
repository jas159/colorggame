void gameover() {
  background(0);
  size (800, 600);
  textSize(70);
  fill(255);
  text( "GAMEOVER", 400, 100);

  if (score >= highscore) {
    highscore = score;
    fill(#FCFF55);
  }
  textSize(50);
  text("Highscore: "+highscore, 400, 300);
  
    score = 0;
    timer=120;
}

void gameoverclick() {
  mode = intro;
}
