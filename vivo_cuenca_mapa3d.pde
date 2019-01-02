import processing.video.*;

Movie mapa;
Movie espera;
Movie puntos;
OPC opc;
int VideoPlaying;
boolean playing1 = false;
boolean playing2 = false;
boolean playing3 = false;

void setup()
{
  size(700, 700);
  //movie = new Movie(this, "comp1c.mp4");
  //movie = new Movie(this, "stand.mp4");
  //movie = new Movie(this, "color1.mp4");
  //movie = new Movie(this, "rios.mp4");
  //movie = new Movie(this, "test.mp4");
  mapa = new Movie(this, "mapa.mp4");
  espera = new Movie(this, "espera.mp4");
  puntos = new Movie(this, "puntos.mp4");
  //mapa.pause();
  //espera.loop();
  //movie.speed(0.5);
  opc = new OPC(this, "127.0.0.1", 7890);

  int spc = 14;
  //FC#1 311 l.
  //I0 - 55 l.
  opc.ledStrip(0, 5, width-(7*spc)/2, spc*1, spc, 0, true);
  opc.ledStrip(5, 10, width-(10*spc)/2, spc*2, spc, 0, false);
  opc.ledStrip(15, 18, width-(20*spc)/2, spc*3, spc, 0, true);
  opc.ledStrip(33, 3, width-(53*spc)/2, spc*4, spc, 0, false);
  opc.ledStrip(36, 19, width-(21*spc)/2, spc*4, spc, 0, false);
  //I1 - 52 l.
  opc.ledStrip(55, 20, width-(22*spc)/2, spc*5, spc, 0, true);
  opc.ledStrip(75, 4, width-(52*spc)/2, spc*5, spc, 0, true);
  opc.ledStrip(79, 28, width-(30*spc)/2, spc*6, spc, 0, false);
  //I2 - 63 l.
  opc.ledStrip(107, 31, width-(31*spc)/2, spc*7, spc, 0, true);
  opc.ledStrip(138, 32, width-(32*spc)/2, spc*8, spc, 0, false);

  //I3 - 34 l.
  opc.ledStrip(170, 32, width-(32*spc)/2, spc*9, spc, 0, true);
  opc.ledStrip(202, 2, width-(85.8*spc)/2, spc*9, spc, 0, true);

  //I4 - 35 l.
  opc.ledStrip(204, 32, width-(34*spc)/2, spc*10, spc, 0, true);
  opc.ledStrip(236, 3, width-(84.8*spc)/2, spc*10, spc, 0, true);

  //I5 - 35 l.
  opc.ledStrip(239, 30, width-(38*spc)/2, spc*11, spc, 0, true);
  opc.ledStrip(269, 5, width-(82.8*spc)/2, spc*11, spc, 0, true);

  //I6 - 37 l.
  opc.ledStrip(274, 31, width-(41*spc)/2, spc*12, spc, 0, true);
  opc.ledStrip(305, 6, width-(81.8*spc)/2, spc*12, spc, 0, true);

  //I7 - 39 l.
  opc.ledStrip(311, 39, width-(51*spc)/2, spc*13, spc, 0, true);

  //FC#2 392 l.
  //I0 - 39 l.
  opc.ledStrip(350, 39, width-(51*spc)/2, spc*14, spc, 0, true);
  //I0 - 40 l.
  opc.ledStrip(389, 40, width-(52*spc)/2, spc*15, spc, 0, true);
  opc.ledStrip(429, 40, width-(52*spc)/2, spc*16, spc, 0, true);
  opc.ledStrip(469, 40, width-(50*spc)/2, spc*17, spc, 0, true);
  opc.ledStrip(509, 39, width-(47*spc)/2, spc*18, spc, 0, true);
  opc.ledStrip(548, 41, width-(45*spc)/2, spc*19, spc, 0, false);
  opc.ledStrip(589, 40, width-(40*spc)/2, spc*20, spc, 0, true);
  opc.ledStrip(629, 38, width-(38*spc)/2, spc*21, spc, 0, true);
  opc.ledStrip(667, 38, width-(38*spc)/2, spc*22, spc, 0, false);
  opc.ledStrip(705, 37, width-(37*spc)/2, spc*23, spc, 0, true);

  //FC#3 460 l.
  opc.ledStrip(742, 36, width-(38*spc)/2, spc*24, spc, 0, true);// aca resté 2 al index
  opc.ledStrip(778, 14, width-(60*spc)/2, spc*25, spc, 0, false);//esta no
  opc.ledStrip(792, 22, width-(24*spc)/2, spc*25, spc, 0, false);//esta no
  //opc.ledStrip(778, 36, width-(38*spc)/2, spc*25, spc, 0, false);
  opc.ledStrip(814, 35, width-(39*spc)/2, spc*26, spc, 0, true);
  opc.ledStrip(849, 33, width-(39*spc)/2, spc*27, spc, 0, true);
  opc.ledStrip(882, 29, width-(37*spc)/2, spc*28, spc, 0, false);
  opc.ledStrip(911, 29, width-(37*spc)/2, spc*29, spc, 0, true);
  opc.ledStrip(940, 29, width-(37*spc)/2, spc*30, spc, 0, false);
  opc.ledStrip(969, 28, width-(36*spc)/2, spc*31, spc, 0, true);
  opc.ledStrip(997, 25, width-(33*spc)/2, spc*32, spc, 0, false);
  opc.ledStrip(1022, 18, width-(26*spc)/2, spc*33, spc, 0, true);
  opc.ledStrip(1040, 3, width-(51*spc)/2, spc*33, spc, 0, true);
  opc.ledStrip(1043, 16, width-(24*spc)/2, spc*34, spc, 0, false);
  opc.ledStrip(1059, 16, width-(22*spc)/2, spc*35, spc, 0, true);
  opc.ledStrip(1075, 16, width-(20*spc)/2, spc*36, spc, 0, true);
  opc.ledStrip(1091, 17, width-(19*spc)/2, spc*37, spc, 0, false);
  opc.ledStrip(1108, 16, width-(16*spc)/2, spc*38, spc, 0, true);
  opc.ledStrip(1124, 15, width-(17*spc)/2, spc*39, spc, 0, false);
  //I7 63 l.
  opc.ledStrip(1139, 14, width-(16*spc)/2, spc*40, spc, 0, true);
  opc.ledStrip(1153, 12, width-(16*spc)/2, spc*41, spc, 0, false);
  opc.ledStrip(1165, 11, width-(17*spc)/2, spc*42, spc, 0, true);
  opc.ledStrip(1176, 9, width-(17*spc)/2, spc*43, spc, 0, false);
  opc.ledStrip(1185, 7, width-(17*spc)/2, spc*44, spc, 0, true);
  opc.ledStrip(1192, 6, width-(16*spc)/2, spc*45, spc, 0, false);
  opc.ledStrip(1198, 4, width-(16*spc)/2, spc*46, spc, 0, true);
  //for(int i=0; i<24; i++) {
  //  opc.ledStrip(i * 60, 60, i * width / 24.0 + width / 48.0,
  //    height * 0.5, width / 24.0, PI * 0.5, false);
  //}
}

void movieEvent(Movie m) {
  m.read();
}

void draw()
{
  background(0);  
  toogle();
  
    
  if (playing1) { 
    println("espera");
    println(espera.time());
    mapa.stop();
    puntos.stop();
    background(0);
    espera.loop();
    background(0);
    image(espera, 0, 0, width, height);
  }
 
  if (playing2) {
    println("mapa");
    println(mapa.time());
    espera.stop();
    puntos.stop();
    background(0);
    mapa.play();
    image(mapa, 0, 0, width, height);
    }
    
    if (playing3) {
    println("puntos");
    println(puntos.time());
    espera.stop();
    mapa.stop();
    background(0);
    puntos.loop();
    image(puntos, 0, 0, width, height);
    }
 
  //if (mapa.time() >= mapa.duration()) {
  //    mapa.stop();
  //    espera.play();
  //     image(espera, 0, 0, width, height);
  //}
   
}

void keyPressed() {

  if (key == '1') {
    VideoPlaying = 1 ;
    println(VideoPlaying);
  }
 
  if (key == '2') {
    VideoPlaying = 2 ;
    println(VideoPlaying);
  }
  
  if (key == '3') {
    VideoPlaying = 3 ;
    println(VideoPlaying);
  }
  
  // if ((playing2 == true) & (key == ' ')) {
  //  mapa.pause();
  //  playing2 = false;
  //} else {
  //  mapa.play();
  //  playing2 = true;
  //}

  if (key == '4' || key == 'A') {
    mapa.jump(67);
  }
  if (key == '5' || key == 'S') {
    mapa.jump(80.5);
  }
  if (key == '6' || key == 'D') {
    mapa.jump(126.5);
  }
  if (key == '7' || key == 'F') {
    mapa.jump(180);
  }
  if (key == '8' || key == 'G') {
    mapa.jump(440);
  }
  if (key == '0' || key == 'G') {
    mapa.jump(592);
  }
  //if (key == ' ') {
  //  mapa.pause();
  //}
}


void toogle() {
 
  if (VideoPlaying == 1) {
    playing1 = true;
    playing2 = false;
    playing3 = false;
  }
 
  if (VideoPlaying == 2) {
    playing1 = false;
    playing2 = true;
    playing3 = false;   
  }
  
  if (VideoPlaying == 3) {
    playing1 = false;
    playing2 = false;
    playing3 = true;
  }
 
 }
