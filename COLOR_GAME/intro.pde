void intro() {
 size (800, 600);
 background (#8E6BCB);
 textSize(40);
 //text("Colour Game", 400,200);
 text("click anywhere to continue", 400,500);
 
 //gif ================
 
 gif = new ArrayList<PImage>(8); //construct the list

  int i = 0;
  String zero;
  while (i <= 7) {
    if (i < 0) {
      zero = "0";
    } else {
      zero = "";
    }
    PImage temp = loadImage("frame_"+ zero + i + "_delay-0.04s.gif");
    gif.add(temp);
    i = i+1;
  }
  
  image(gif.get(n), 100, 50);
  if (frameCount % 2 == 0) { 
    n = n+1;
  }

  if (n > 7) {
    n = 0;
  }
}


void introclick() {
  mode = play;
}
