void play() {
  //true=======================
  fill(255);
  rect(0, 0, 400, 600);
  fill(0);
  textSize(50);
  text ("TRUE", 200, 100);
  //false=======================
  fill(0);
  rect(400, 0, 400, 600);
  fill(255);
  text("FALSE", 600, 100);
  textSize(80);
  fill(colors[colour]);
  text(words[text], 400, 300);

  //score=======================
  fill(255);
  strokeWeight(5);
  stroke(#A5A9AA);
  rect(350, 10,100,100);
  noStroke();
  fill(0);
  textSize(50);
  text(""+score, 400, 50);
  
  //timer========================
  timer--;
  if (timer <= 0) {
   mode = gameover; 
  }
  fill(255);
  strokeWeight(5);
  stroke(#A5A9AA);
  rect(350, 450,100,100);
  noStroke();
  fill(0);
  textSize(50);
  text(""+timer,400,500);

  if (colour == text) {
    answer =true;
  } else {
    answer = false;
  }
}

void playclick() {

  colour = int(random(0, 4));
  text = int(random(0, 4));

  if (mouseX <= 400 && answer == true) {
    score++;
    timer = 120;
  }


  if (mouseX <= 400 && answer == false) {
    mode = gameover;
  }


  if (mouseX>=400 && answer == true) {
    mode = gameover;
  }

  if (mouseX>= 400 && answer == false) {
    score++;
    timer = 120;
  }
}
