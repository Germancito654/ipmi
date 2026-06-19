/*
Alumno: Rocha Niklas German
Comision: 3
Link del Video: https://youtu.be/yQF3LmO5D1o
*/

PImage img;
float vueltas = 18;
float tamBase = 14;
boolean cambioColor = false;
boolean coloresInvertidos = false;
float tiempo = 0;

void setup() {
  size(800, 400);
  smooth();
  img = loadImage("38.png");
}

void draw() {
  if (coloresInvertidos) {
    background(255);
  } else {
    background(0);
  }
  
  tiempo += 0.08;
  
  pushMatrix();
  translate(600, 200);

  for (int i = 1; i <= vueltas; i++) {
    float avance = map(i, 1, vueltas, 0, 1);
    float curva = avance * avance;
    float radio = map(curva, 0, 1, 10, 450);
    int total = int(6 + (i * 3));

    for (int j = 0; j < total; j++) {
      float anguloGrados = map(j, 0, total, 0, 360);
      float ondaX = (mouseX - 400) * 0.04 * (i * 0.15);
      float ondaY = (mouseY - 200) * 0.015;
      float radioFinal = radio + ondaX + ondaY;

      pushMatrix();
      rotate(radians(anguloGrados));
      translate(radioFinal, 0);

      float escala = calcularTamañoCirculo(i, tamBase, tiempo);
      if (coloresInvertidos) {
        if (cambioColor) {
          fill(155, 0, 0);
        } else {
          fill(0);
        }
      } else {
        if (cambioColor) {
          fill(255, 100, 100);
        } else {
          fill(255);
        }
      }

      noStroke();
      ellipse(0, 0, escala, escala);
      popMatrix();
    }
  }
  popMatrix();

  if (coloresInvertidos) {
    fill(255);
  } else {
    fill(0);
  }
  noStroke();
  rect(0, 0, 400, 400);

  image(img, 0, 0, 400, 400);

  stroke(100);
  line(400, 0, 400, 400);
}


float calcularTamañoCirculo(float ind, float b, float t) {
  float mult = 0.4 + (ind / vueltas) * 0.8;
  float tamEstatico = b * mult;


  float ciclo = (t + ind * 0.5) % 2.0;
  float palpito;

  if (ciclo < 1.0) {
    palpito = map(ciclo, 0, 1, -3, 3);
  } else {
    palpito = map(ciclo, 1, 2, 3, -3);
  }

  return tamEstatico + palpito;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      vueltas++;
    } else if (keyCode == DOWN) {
      if (vueltas > 5) {
        vueltas--;
      }
    }
  }
  if (key == 'r') {
    vueltas = 18;
    tamBase = 14;
    cambioColor = false;
    coloresInvertidos = false;
    tiempo = 0;
  }
}

void mousePressed() {
  float d = dist(mouseX, mouseY, 600, 200);
  if (d < 200) {
    if (mouseButton == LEFT) {
      cambioColor = !cambioColor;
      tamBase = random(10, 18);
    } else if (mouseButton == RIGHT) {
      coloresInvertidos = !coloresInvertidos;
    }
  }
}
