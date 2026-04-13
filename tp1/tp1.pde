PImage mural;

void setup(){
 size(800, 400);
 mural = loadImage("mural1.jpg");
}

void draw(){
  background (70);
  image(mural, 0 , 0, 400, 400); //imagen en la mitad izquierda
  
  translate(400,0); //Mover cords de 0,0 a 400,0
  dibujarFondo();
  dibujarImagen();
}

void dibujarFondo(){
  stroke(0);
  fill(155, 84, 131);
  beginShape();
  vertex(0,150);
  vertex(50, 170);
  vertex(300, 170);
  vertex(350, 160);
  vertex(400, 150);
  vertex(400, 400);
  vertex(0, 400);
  endShape(CLOSE);
}

void dibujarImagen(){
  
  //Estrella Blanca
  noStroke();
  fill(255);
  beginShape();
  vertex(194, 28);
  vertex(197, 67);
  vertex(214, 41);
  vertex(203, 80);
  vertex(224, 54);
  vertex(208, 93);
  vertex(242, 79);
  vertex(218, 103);
  vertex(245, 110);
  vertex(156, 114);
  vertex(178, 109);
  vertex(149, 92);
  vertex(178, 96);
  vertex(152, 68);
  vertex(176, 83);
  vertex(162, 51);
  vertex(182, 77);
  vertex(194, 28);
  endShape(CLOSE);
  
  //Cuerpo
  push();
  stroke(0);
  strokeWeight(2);
  fill(255, 200, 0);
  ellipse(114, 187, 150, 150);
  
  //Forma de la cara
  beginShape();
  vertex(164, 131);
  vertex(222, 131);
  vertex(270, 255);
  vertex(114, 255);
  endShape(CLOSE);
  
  //Pelo(?
  fill(232, 178, 0);
  ellipse(193, 120, 65, 50);
  
  //Oreja Izquierda
  beginShape();
  vertex(163, 130);
  vertex(113, 262);
  vertex(89, 266);
  vertex(97, 253);
  vertex(66, 257);
  vertex(75, 247);
  vertex(54, 224);
  vertex(75, 221);
  vertex(108, 186);
  vertex(99, 182);
  vertex(123, 158);
  vertex(142, 136);
  vertex(163, 130);
  endShape(CLOSE);
  
  //Orbe
  fill(255, 200, 0);
  ellipse(334, 200, 100, 150);
  fill(200, 200, 0);
  beginShape();
  vertex(322, 177);
  vertex(343, 187);
  vertex(337, 204);
  vertex(351, 194);
  vertex(362, 206);
  vertex(359, 177);
  vertex(368, 173);
  vertex(354, 173);
  vertex(348, 149);
  vertex(345, 167);
  vertex(339, 164);
  vertex(338, 175);
  vertex(322, 177);
  endShape(CLOSE);
  
  //Oreja Derecha
  fill(232, 178, 0);
  beginShape();
  vertex(223, 130);
  vertex(273, 262);
  vertex(297, 266);
  vertex(289, 253);
  vertex(320, 257);
  vertex(311, 247);
  vertex(332, 224);
  vertex(311, 221);
  vertex(278, 186);
  vertex(287, 182);
  vertex(263, 158);
  vertex(244, 136);
  vertex(223, 130);
  endShape(CLOSE);
  
  //Cola
  beginShape();
  vertex(58, 147);
  vertex(21, 189);
  vertex(9, 195);
  vertex(17, 199);
  vertex(0, 214);
  vertex(0, 314);
  vertex(3, 302);
  vertex(15, 323);
  vertex(12, 313);
  vertex(22, 320);
  vertex(29, 345);
  vertex(31, 318);
  vertex(35, 332);
  vertex(36, 309);
  vertex(42, 324);
  vertex(44, 292);
  vertex(50, 311);
  vertex(52, 292);
  vertex(39, 249);
  vertex(45, 226);
  vertex(58, 147);
  endShape(CLOSE);
  
  //Pata Izquierda
  beginShape();
  vertex(108, 271);
  vertex(110, 303);
  vertex(122, 297);
  vertex(124, 305);
  vertex(140, 320);
  vertex(149, 318);
  vertex(159, 299);
  vertex(165, 305);
  vertex(171, 305);
  vertex(173, 217);
  endShape(CLOSE);
  
  //Pata Derecha
  beginShape();
  vertex(277, 265);
  vertex(285, 294);
  vertex(281, 312);
  vertex(274, 312);
  vertex(271, 303);
  vertex(268, 311);
  vertex(265, 319);
  vertex(262, 326);
  vertex(251, 326);
  vertex(241, 314);
  vertex(234, 321);
  vertex(227, 322);
  vertex(218, 296);
  vertex(218, 213);
  endShape(CLOSE);
  
  //Bigote
  beginShape();
  vertex(196, 200);
  vertex(181, 179);
  vertex(165, 184);
  vertex(127, 213);
  vertex(132, 221);
  vertex(107, 243);
  vertex(103, 269);
  vertex(114, 279);
  vertex(155, 262);
  vertex(198, 311);
  vertex(234, 272);
  vertex(256, 275);
  vertex(277, 268);
  vertex(298, 287);
  vertex(271, 233);
  vertex(229, 189);
  vertex(212, 178);
  vertex(196, 200);
  endShape(CLOSE);
  
  //Nariz
  fill(216, 168, 7);
  ellipse(196, 181, 30, 35);
  
  //Ojos
  fill(232, 178, 0);
  rect(162, 155, 20, 8);
  rect(208, 155, 20, 8);
  pop();
  
}
