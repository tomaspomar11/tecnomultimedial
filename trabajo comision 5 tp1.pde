int pantallaActual = 1;
int tiempoCambioPantalla = 7700; 
int tiempoUltimoCambioPantalla = 0;
PImage imagenuno;
String text = "hola soy una maza una herramienta de mano que sirve para golpear o percutir ";
float x = 20;
float y = 0;
int textSize = 18;
color textColor = color(255, 0, 0);
float speed = 2;
boolean movingUp = true;
int xPos = 50;
float fadeAmount = 0;
float fadeSpeed = 0.05;
int fadeDirection = 1;
String message = "Mientras que el martillo cumple su principal papel dentro de la carpintería\n yo me desempeño en la industria de la construcción o en la albañilería.";
int blinkInterval = 1000; 
int lastBlink = 0;
boolean showText = true;
void setup() {
  size(640, 480);
}

void draw() {
 

  
  
  
  int tiempoTranscurrido = millis() - tiempoUltimoCambioPantalla;
  if (tiempoTranscurrido > tiempoCambioPantalla) {
    pantallaActual++;
    if (pantallaActual > 4) {
      pantallaActual = 1;
    }
    tiempoUltimoCambioPantalla = millis();
  }
  
  if (pantallaActual == 1) {
    animacionPantalla1();
  } else if (pantallaActual == 2) {
    animacionPantalla2();
  } else if (pantallaActual == 3) {
    animacionPantalla3();
  }   else if (pantallaActual == 4) {
    animacionPantalla4();
  }
}

void animacionPantalla1() {
  imagenuno=loadImage("maza.png");
  imagenuno.resize(640, 480);
  image(imagenuno,1,1);
  textSize(textSize);
  fill(textColor);
  textAlign(LEFT, CENTER);
  text(text, x, y);
  
  if (movingUp) {
    y -= speed;
  } else {
    y += speed;
  }
  
  if (y < 0) {
    movingUp = false;
  } else if (y > height) {
    movingUp = true;
  }
}

void animacionPantalla2() {
  imagenuno=loadImage("maza 2.jpg");
  imagenuno.resize(640, 480);
  image(imagenuno,1,1);
  textAlign(CENTER, CENTER);
  textSize(15); 
  textAlign(RIGHT);
  textSize(20);
  fill(0);
 fill(0);
  textAlign(LEFT);
  text(" tiene la forma de un martillo, pero es de mayor tamaño y peso.", xPos, height/2);
  xPos -= 5;
  if (xPos < -textWidth("")) {
    xPos = width;
  }
}


void animacionPantalla3() {
  imagenuno=loadImage("maza 3.jpg");
  imagenuno.resize(640, 480);
  image(imagenuno,1,1);
  fill(#050504);
  
  if (millis() - lastBlink > blinkInterval) {
    lastBlink = millis();
    showText = !showText;
  }
 
  if (showText) {
    text(message, width/2, height/2);
    textAlign(CENTER, CENTER);
  textSize(18);
  }
  
  }
 


void animacionPantalla4() {
  

  background(220);
  textSize(32);
  fill(0);
  text("Gracias por ver mi presentacion!", width/2, height/2);
  textAlign(CENTER, CENTER);
  drawRestartButton();
}

void drawRestartButton() {
  // Configuración del botón
  int buttonWidth = 120;
  int buttonHeight = 50;
  int buttonX = width - buttonWidth - 20;
  int buttonY = height - buttonHeight - 20;

  
  boolean overButton = (mouseX > buttonX && mouseX < buttonX+buttonWidth &&
                        mouseY > buttonY && mouseY < buttonY+buttonHeight);

  
  strokeWeight(2);
  if (overButton) {
    fill(200);
  } else {
    fill(255);
  }
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  textAlign(CENTER, CENTER);
  textSize(16);
  fill(0);
  text("Reiniciar", buttonX + buttonWidth/2, buttonY + buttonHeight/2);

  
  if (overButton && mousePressed) {
    restartSketch();
  }
}

void restartSketch() {
  pantallaActual = 4;
  tiempoUltimoCambioPantalla = 0;
}
 
    
  
