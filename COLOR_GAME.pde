int mode;
color red=#DF151A;
color orange = #FD8603;
color yellow=#F4F328;
color green=#00DA3C;
color blue= #00CBE7;
final int intro = 0;
final int play = 1;
final int gameover = 2;
String[]words = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE"};
color[]colors = {red, orange, yellow, green, blue};
int colour;
int text;
void setup() {
  size(800, 600);
  mode = intro;
  textAlign(CENTER, CENTER);
}


void draw() {
  if (mode==0) {
    intro();
  } else if (mode==1) {
    play();
  } else if (mode==2) {
    gameover();
  } else {
    println ("mode error! mode was "+ mode);
  }
}

void mouseReleased() {

  if (mode==intro) {
    introclick();
  } else if (mode==play) {
    playclick();
  } else if (mode==2) {
    gameover();
  } else {
    println ("mode error"); 
    {
    }
  }
}
