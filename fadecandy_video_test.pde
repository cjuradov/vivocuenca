OPC opc;

import processing.video.*;
Movie movie;

boolean playing = false;

void setup()
{
  size(650, 650);

  // Load a sample image
  movie = new Movie(this, "comp1c.mp4");
  movie.pause();


  // Connect to the local instance of fcserver
  opc = new OPC(this, "127.0.0.1", 7890);

  int spc = 14;
  ////// FC#1 ///////
  //I0 - 55 leds
  opc.ledStrip(0, 5, width-(7*spc)/2, spc*1, spc, 0, false);
  opc.ledStrip(5, 10, width-(10*spc)/2, spc*2, spc, 0, true);
  opc.ledStrip(15, 18, width-(20*spc)/2, spc*3, spc, 0, false);
  opc.ledStrip(33, 3, width-(53*spc)/2, spc*4, spc, 0, false);
  opc.ledStrip(36, 19, width-(21*spc)/2, spc*4, spc, 0, false);
  //I1 - 52 leds
  opc.ledStrip(55, 4, width-(52*spc)/2, spc*5, spc, 0, false);
  opc.ledStrip(59, 20, width-(22*spc)/2, spc*5, spc, 0, false);
  opc.ledStrip(99, 28, width-(30*spc)/2, spc*6, spc, 0, false);

  //I2 - 63 leds
  opc.ledStrip(127, 31, width-(31*spc)/2, spc*7, spc, 0, false);
  opc.ledStrip(158, 32, width-(32*spc)/2, spc*8, spc, 0, false);
  //I3 - 39 leds
  opc.ledStrip(190, 2, width-(85.8*spc)/2, spc*9, spc, 0, false);
  opc.ledStrip(192, 32, width-(32*spc)/2, spc*9, spc, 0, false);  
  //I4 - 37 leds
  opc.ledStrip(224, 3, width-(84.8*spc)/2, spc*10, spc, 0, false);
  opc.ledStrip(227, 32, width-(34*spc)/2, spc*10, spc, 0, false);  
  //I5 - 34 leds
  opc.ledStrip(259, 5, width-(82.8*spc)/2, spc*11, spc, 0, false);
  opc.ledStrip(264, 30, width-(38*spc)/2, spc*11, spc, 0, false);  
  //I6 - 36 leds
  opc.ledStrip(294, 6, width-(81.8*spc)/2, spc*12, spc, 0, false);
  opc.ledStrip(300, 31, width-(41*spc)/2, spc*12, spc, 0, false);
  //I7 - 39 leds
  opc.ledStrip(331, 39, width-(51*spc)/2, spc*13, spc, 0, false);

  //FC B
  //FCB I0 - 39 leds
  opc.ledStrip(370, 39, width-(51*spc)/2, spc*14, spc, 0, false);

  opc.ledStrip(409, 40, width-(52*spc)/2, spc*15, spc, 0, false);
  opc.ledStrip(449, 40, width-(52*spc)/2, spc*16, spc, 0, false);
  opc.ledStrip(489, 40, width-(50*spc)/2, spc*17, spc, 0, false);
  opc.ledStrip(529, 39, width-(47*spc)/2, spc*18, spc, 0, false);
  opc.ledStrip(568, 41, width-(45*spc)/2, spc*19, spc, 0, false);
  opc.ledStrip(609, 40, width-(40*spc)/2, spc*20, spc, 0, false);
  opc.ledStrip(649, 38, width-(38*spc)/2, spc*21, spc, 0, false);
  opc.ledStrip(687, 38, width-(38*spc)/2, spc*22, spc, 0, false);
  opc.ledStrip(725, 37, width-(37*spc)/2, spc*23, spc, 0, false);
  opc.ledStrip(762, 36, width-(38*spc)/2, spc*24, spc, 0, false);
  opc.ledStrip(798, 36, width-(38*spc)/2, spc*25, spc, 0, false);
  opc.ledStrip(834, 35, width-(39*spc)/2, spc*26, spc, 0, false);
  opc.ledStrip(869, 33, width-(39*spc)/2, spc*27, spc, 0, false);
  opc.ledStrip(902, 29, width-(37*spc)/2, spc*28, spc, 0, false);
  opc.ledStrip(931, 29, width-(37*spc)/2, spc*29, spc, 0, false);
  opc.ledStrip(960, 29, width-(37*spc)/2, spc*30, spc, 0, false);
  opc.ledStrip(989, 28, width-(36*spc)/2, spc*31, spc, 0, false);
  opc.ledStrip(1017, 25, width-(33*spc)/2, spc*32, spc, 0, false);
  opc.ledStrip(1042, 18, width-(26*spc)/2, spc*33, spc, 0, false);
  opc.ledStrip(1060, 3, width-(51*spc)/2, spc*33, spc, 0, false);
  opc.ledStrip(1063, 16, width-(24*spc)/2, spc*34, spc, 0, false);
  opc.ledStrip(1079, 16, width-(22*spc)/2, spc*35, spc, 0, false);
  opc.ledStrip(1095, 16, width-(20*spc)/2, spc*36, spc, 0, false);
  opc.ledStrip(1111, 17, width-(19*spc)/2, spc*37, spc, 0, false);
  opc.ledStrip(1128, 16, width-(16*spc)/2, spc*38, spc, 0, false);
  opc.ledStrip(1144, 15, width-(17*spc)/2, spc*39, spc, 0, false);
  opc.ledStrip(1159, 14, width-(16*spc)/2, spc*40, spc, 0, false);
  opc.ledStrip(1173, 12, width-(16*spc)/2, spc*41, spc, 0, false);
  opc.ledStrip(1185, 11, width-(17*spc)/2, spc*42, spc, 0, false);
  opc.ledStrip(1196, 9, width-(17*spc)/2, spc*43, spc, 0, false);
  opc.ledStrip(1205, 7, width-(17*spc)/2, spc*44, spc, 0, false);
  opc.ledStrip(1212, 6, width-(16*spc)/2, spc*45, spc, 0, false);
  opc.ledStrip(1218, 4, width-(16*spc)/2, spc*46, spc, 0, false);
}

void movieEvent(Movie m) {
  m.read();
}

void draw()
{
  background(0);
  println(movie.time());
  image(movie, 0, 0, width, height);
}

void keyPressed() {
  //if (key == ' ') {
  if ((playing == true) & (key == ' ')) {
    movie.pause();
    playing = false;
  } else {
    movie.play();
    playing = true;
  }
  //}


  if (key == 'a' || key == 'A') {
    movie.jump(2);
  }
  if (key == 's' || key == 'S') {
    movie.jump(70);
  }
  if (key == 'd' || key == 'D') {
    movie.jump(120);
  }
  if (key == 'f' || key == 'F') {
    movie.jump(180);
  }
  if (key == 'g' || key == 'G') {
    movie.jump(210);
  }
  //if (key == ' ') {
  //  movie.pause();
  //}
}
