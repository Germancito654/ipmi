/*
"Ado", artista Japonesa
Alumno: Niklas Rocha German
Comision: 3
Legajo: 125672/7
*/

int pantalla = 0;
int tiempo;

PImage Menu, P1, P2, P3, P4, P5, FilmRed, Miku; 
PFont FuenteTNR;

float xTexto = 800;
float yTexto = 600;

boolean inicio = false;

void setup() { 
 size(640, 480);
 
 Menu = loadImage("Menu.jpg");
 P1 = loadImage("Pantalla1.jpg");
 P2 = loadImage("Pantalla2.jpg");
 P3 = loadImage("Pantalla3.jpg");
 P4 = loadImage("Pantalla4.jpg");
 P5 = loadImage("Pantalla5.jpg");
 FilmRed = loadImage("FilmRed.jpg");
 Miku = loadImage("Miku.jpg");
  
 FuenteTNR = loadFont("TNR.vlw");
 textFont(FuenteTNR, 16);
 
 tiempo = millis();
}

void draw() {
 if (inicio == true) {
   if (millis() - tiempo > 10000) {
    pantalla++;
    tiempo = millis();
    
    yTexto = 600;
    xTexto = 800;
   }
 }
 
 if (pantalla == 0) {
   image(Menu, 0, 0, width, height);
   
   fill(50, 100, 255);
   rect(220, 350, 200, 60);
   fill(255);
   textSize(30);
   text("Comenzar", 260, 390);
 }
 
 if (pantalla == 1) {
   background(0);
   image(P1, 0, 0, width, height);
   
   fill(0);
   rect(10, 350, 620, 60);
   fill(255);
   textSize(16);
   text("el 23 de Octubre de 2020 fue cuando Ado hizo debut lanzando su cancion 'Usseewa',\n la cual supero las 100 millones de reproducciones en 148 dias desde su lanzamiento", 15, yTexto);
   if (yTexto > 370) {
     yTexto -= 2;
   }
 }
  
 if (pantalla == 2) {
   background(0);
   image(P2, 0, 0, width, height);
   
   fill(0);
   rect(10, 350, 620, 60);
   fill(255);
   textSize(16);
   text("'Readymade' salió el 24 de Diciembre de 2020 y marcó su segundo gran hit, la cancion \nactualmente tiene 128 millones de reproducciones en Youtube desde su lanzamiento", xTexto, 370);
   if (xTexto > 15) {
     xTexto -= 5;
   }
 }
 
 if (pantalla == 3) {
   background(0);
   image(P3, 0, 0, width, height);
   
   fill(0);
   rect(10, 350, 620, 60);
   fill(255);
   textSize(16);
   text("'Gira Gira' fue su tercer hit desde su debut, lanzada el 14 de Febrero de 2021, \nactualmente cuenta con 213 millones de reproducciones en Youtube", 15, yTexto);
   if (yTexto > 370) {
     yTexto -= 2;
   }
 }
 
 if (pantalla == 4) {
   background(0);
   image(P4, 0, 0, width, height);
   
   fill(0);
   rect(10, 350, 620, 60);
   fill(255);
   textSize(16);
   text("'Odo' fue lanzada el 27 de Abril de 2021 y marcó el cuarto hit de Ado, la cancion \nactualmente cuenta con 241 millones de reproducciones en Youtube", xTexto, 370);
   if (xTexto > 15) {
     xTexto -= 5;
   }
 }
 
 if (pantalla == 5) {
   background(0);
   image(P5, 0, 0, width, height);
   
   fill(0);
   rect(10, 350, 620, 60);
   fill(255);
   textSize(16);
   text("'Yoru no Pierrot' fue lanzada el 14 de Junio de 2021 y fue la quinto Sencillo Digital desde su \ndebut, aunque solo tiene 26 millones de reproducciones en Youtube", 15, yTexto);
   if (yTexto > 370) {
     yTexto -= 2;
   }
 }
 
 if (pantalla == 6) {
   background(0);
   image(FilmRed, 80, 150, 200, 200);
   image(Miku, 380, 150, 200, 200);
   
   fill(255);
   textSize(16);
   text("Tambien participo como cantante en las\n canciones de One Piece Film Red", xTexto, 100);
   text("Y el 28 de Abril de 2024 cantó junto\n a Hatsune Miku en un Concierto", 350, yTexto);
   if (xTexto > 80) {
     xTexto -= 4;
   }
   if (yTexto > 370) {
     yTexto -= 2;
   }
 }
 
 if (pantalla == 7) {
   background(0);
   textSize(26);
   text("Fin.", 294, height/2);
   
   fill(50, 100, 255);
   rect(220, 350, 200, 60);
   fill(255);
   textSize(30);
   text("Reiniciar", 260, 390);
 }
}

void mousePressed() {
  if (pantalla == 0 && mouseX > 220 && mouseX < 420 && mouseY > 350 && mouseY < 410) {
    inicio = true;
    pantalla = 1;
    tiempo = millis();
  }
  
  if (pantalla == 7 && mouseX > 220 && mouseX < 420 && mouseY > 350 && mouseY < 410) {
    inicio = false;
    pantalla = 0;
    tiempo = millis();
  }
}
