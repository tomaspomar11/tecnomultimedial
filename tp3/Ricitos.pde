// video de youtube:https://www.youtube.com/watch?v=qyg5jxwW6XY&ab_channel=SpookyAM
// Tomas  Pomar Codorniu
// Legajo:95507/3

PImage imagenInicio;
PImage imagenRicitos;
PImage imagenCaminos;
PImage imagenRicitoscabaña;
PImage imagenSiguientePantalla;
PImage imagenPlatos;
PImage imagenCamas;
PImage imagenDormida;
PImage imagenEnojados;
PImage imagenEscapando;
PImage imagenPerdidaDespuesEscaparDeOsos;
PImage imagenPueblo;
PImage imagenCasaAbandonada;
PImage imagenPuertaCasaAbadonada;
PImage imagenRicitosConLaTorta;
PImage imagenDesmayadaEnLaCasaAbandonada;
PImage imageRicitosDesmayada;
PImage imageRicitosYLosOsos;
PImage imageRicitosYLosOsosComiendo;
PFont font;

int pantallaActual = 0; //Variable de pantalla
boolean isButtonPressed = false;

void setup() {
  size(600, 600);
  font = loadFont("Cambria-BoldItalic-48.vlw"); //Font que se utiliza en las pantallas
  //Imagenes Cargadas
  imagenInicio = loadImage("imagenCabaña.jpeg");
  imagenRicitos = loadImage("Ricitosperdida.jpeg");
  imagenCaminos = loadImage("caminos.jpeg");
  imagenRicitoscabaña = loadImage("ricitoscabaña.jpeg");
  imagenSiguientePantalla = loadImage("platos.jpeg");
  imagenPlatos = loadImage("platos.jpeg");
  imagenCamas = loadImage("camas.jpeg");
  imagenDormida = loadImage("dormida.jpeg");
  imagenEnojados = loadImage("enojados.jpeg");
  imagenEscapando = loadImage("escapando.jpeg");
  imagenPerdidaDespuesEscaparDeOsos = loadImage("perdida.jpeg");
  imagenPueblo = loadImage("pueblo.jpeg");
  imagenCasaAbandonada = loadImage("bruja.jpeg");
  imagenPuertaCasaAbadonada = loadImage("bruja_abre_puerta.jpeg");
  imagenRicitosConLaTorta = loadImage("torta.jpeg");
  imageRicitosDesmayada = loadImage("desmayada.jpeg");
  imageRicitosYLosOsos = loadImage("familia.jpeg");
  imageRicitosYLosOsosComiendo = loadImage("comiendo.jpeg");
  
  //Tamaño de imagenes que se utilizan
  imagenInicio.resize(width, height);
  imagenRicitos.resize(600, 600);
  imagenCaminos.resize(width, height);
  imagenRicitoscabaña.resize(width, height);
  imagenSiguientePantalla.resize(width, height);
  imagenPlatos.resize(width, height);
  imagenCamas.resize(width, height);
  imagenDormida.resize(width, height);
  imagenEnojados.resize(width, height);
  imagenEscapando.resize(width, height);
  imagenPerdidaDespuesEscaparDeOsos.resize(width, height);
  imagenPueblo.resize(width, height);
  imagenCasaAbandonada.resize(width, height);
  imagenPuertaCasaAbadonada.resize(width, height);
  imagenRicitosConLaTorta.resize(width, height);
  imageRicitosDesmayada.resize(width, height);
  imageRicitosYLosOsos.resize(width, height);
  imageRicitosYLosOsosComiendo.resize(width, height);
}

void draw() {
  background(255);
  switch (pantallaActual) {
    case 0:
      image(imagenInicio, 0, 0);
      textSize(24);
      textAlign(CENTER, TOP);
      textFont(font, 24);
      fill(252, 252, 0);
      text("Aventura Gráfica: Ricitos de Oro", width/2, 20);
      if (isButtonPressed) {
        fill(252, 252, 0);
      } else {
        fill(252, 252, 0);
      }
      rect(width/2 - 50, height/2, 100, 30);
      textAlign(CENTER, CENTER);
      fill(0);
      text("Jugar", width/2, height/2 + 15);
      break;
    case 1:
      image(imagenRicitos, 0, 0);
      textSize(16);
      textAlign(CENTER, TOP);
      fill(#FFEB0A);
      text("Ricitos paseaba por el bosque tranquilamente, pero cuando quiso volver\n a su casa se perdió por el bosque y no supo como volver,\n así que siguió avanzando intentando encontrar el camino de regreso a casa.", width/2, 500);
      if (isButtonPressed) {
        fill(252, 252, 0);
      } else {
        fill(252, 252, 0);
      }
      rect(width/2 - 50, height/2 + 50, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Avanzar", width/2, height/2 + 65);
      break;
      
    case 2:
      image(imagenCaminos, 0, 0);
      textSize(16);
      fill(255, 255, 0);
      textAlign(CENTER, TOP);
      text("Ricitos encuentra tres caminos:\n" + 
           "El camino de la izquierda lleva a un lugar con mucha luz y\n un rico olor a comida deliciosa.\n" +
           "El del medio lleva a un lugar muy frio y solitario.\n" +
           "Y por ultimo, el de la derecha lleva a un lugar oscuro y diabólico...", width/2, 40);
      rect(50, height/2 - 15, 60, 30);
      fill(252, 252, 0);
      textAlign(CENTER, CENTER);
      fill(0);
      text("A", 50 + 30, height/2);
      rect(width/2 - 30, height/2 - 15, 60, 30);
      
      fill(252, 252, 0);
      textAlign(CENTER, CENTER);
      text("B", width/2, height/2);
      rect(width - 110, height/2 - 15, 60, 30);
      
      fill(252, 252, 0);
      textAlign(CENTER, CENTER);
      fill(255, 255, 255);
      fill(0);
      text("C", width - 110 + 30, height/2);
      break;


    case 3:
      image(imagenRicitoscabaña, 0, 0);
      textSize(16);
      textAlign(CENTER, TOP);
      fill(252, 252, 0);
      text("Ricitos encuentra una cabaña y toca la puerta a ver si atiende alguien\n" +
           "Nadie contesta a su llamado, entonces empuja la puerta y esta se abre...", width/2, 20);
      if (isButtonPressed) {
        fill(252, 252, 0);
      } else {
        fill(252, 252, 0);
      }
      rect(width/2 - 50, height/2 + 50, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Entrar", width/2, height/2 + 65);
      break;

    case 4:
        image(imagenPlatos, 0, 0);
        textSize(14);
        textAlign(CENTER, TOP);
        fill(252, 252, 0);
        text("Ricitos de Oro tenía un gran apetito, y la avena que encontró sobre la mesa se veía deliciosa.\n" +
             "Primero, probó la avena de la taza grande,\n" +
             "pero la avena estaba muy fría y no le gustó.\nLuego, probó la avena de la taza mediana,\n" +
             "pero la avena estaba muy caliente y tampoco le gustó.\n" +
             "Por último, probó la avena de la taza pequeña\n y esta vez la avena no estaba ni fría ni caliente,\n" +
             "estaba tan deliciosa que se la comió toda sin dejar ni un poquito...", width/2, 20);
        if (isButtonPressed) {
          fill(252, 252, 0);
        } else {
          fill(252, 252, 0);
        }
        rect(width - 160, height/2 - 15, 120, 30);
        fill(0);
        textAlign(CENTER, CENTER);
        text("Avanzar", width - 100, height/2);
        break;
    
    case 5:
      image(imagenCamas, 0, 0);
      textSize(16);
      textAlign(CENTER, TOP);
      fill(252, 252, 0);
      text("Buscando un lugar para descansar, subió las escaleras y\n" +
             "al final del pasillo encontró un cuarto con tres camas:\nuna grande, una mediana y una pequeña.\n" +
             "Primero, se subió a la cama grande,\npero estaba demasiado dura y no le gustó.\n" +
             "Después, se subió a la cama mediana,\npero estaba demasiado blanda y tampoco le gustó.\n" +
             "Entonces, se acostó en la cama pequeña,\n" +
             "la cama no estaba ni demasiado dura ni demasiado blanda,\n¡se sentía perfecta!\n" +
             "Ricitos de Oro se quedó profundamente dormida...", width/2, 20);
     rect(width - 120, height - 50, 100, 30);
     fill(0);
     textAlign(CENTER, CENTER);
     text("Continuar", width - 70, height - 35);
     if (isButtonPressed) {
       fill(252, 252, 0);
     } else {
       fill(252, 252, 0);
     }
     break;
    
    case 6:
      image(imagenDormida, 0, 0);
      textSize(16);
      textAlign(CENTER, TOP);
      fill(252, 252, 0);
      text("Ricitos se queda dormida enseguida.\n" +
           "Mientras ella dormia.\n" +
           "Una familia de osos entra a la casa...", width/2, 20);
      fill(255);
      rect(width - 120, height - 50, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Continuar", width - 70, height - 35);
      if (isButtonPressed) {
       fill(252, 252, 0);
       } else {
         fill(252, 252, 0);
       }
       break;

    case 7:
      image(imagenEnojados, 0, 0);
      textSize(16);
      text("Ricitos se despierta con el ruido de los osos.\nAsustada salta de la cama para llegar a la puerta de la casa\ny escapa.", width/2, 40);
      fill(252, 252, 0);
      rect(width/2 - 50, height/2, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Escapar", width/2, height/2 + 15);
      if (isButtonPressed) {
        fill(252, 252, 0);
      } else {
        fill(252, 252, 0);
      }
      break;
      
   case 8:
      image(imagenEscapando, 0, 0);
      textAlign(CENTER, CENTER);
      textSize(16);
      text("Ricitos logra escapar de la casa de osos para nunca regresar...", width/2, 500);
      fill(252, 252, 0);
      rect(width - 120, height - 50, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Continuar", width - 70, height - 35);
      if (isButtonPressed) {
        fill(252, 252, 0);
      } else {
        fill(252, 252, 0);
      }
      break;

   case 9:
     image(imagenPerdidaDespuesEscaparDeOsos, 0, 0);
     textAlign(CENTER, CENTER);
     textSize(16);
     text("Ricitos, cansada logra escapar de los osos.\nTermina en el bosque perdida otra vez\nEn busca de su pueblo atraviesa el bosque...", width/2, 40);
     fill(252, 252, 0);
     rect(width/2 - 50, height/2, 100, 30);
     fill(0);
     textAlign(CENTER, CENTER);
     text("Continuar", width/2, height/2 + 15);
     if (isButtonPressed) {
       fill(252, 252, 0);
     } else {
       fill(252, 252, 0);
     }
     break;
     
   case 10:
     image(imagenPueblo, 0, 0);
     textSize(16);
     textAlign(CENTER, CENTER);
     text("Despues de una larga aventura en el bosque vuelve a su pueblo.", width/2, 20);
     fill(252, 252, 0);
     rect(width - 120, height - 50, 100, 30);
     fill(0);
     textAlign(CENTER, CENTER);
     text("Reiniciar", width - 70, height - 35);
     if (isButtonPressed) {
       fill(252, 252, 0);
     } else {
       fill(252, 252, 0);
     }
     break;
     
   case 11:
     image(imagenCasaAbandonada, 0, 0);
     textSize(16);
     textAlign(CENTER, CENTER);
     text("Ricitos al meterse por el camino de la derecha\nSe encuentra una casa abandona en el medio del bosque\nY decide tocar la puerta...", width/2, 40);
     fill(252, 252, 0);
     rect(width - 120, height - 50, 100, 30);
     fill(0);
     textAlign(CENTER, CENTER);
     text("Continuar", width - 70, height - 35);
     if (isButtonPressed) {
       fill(252, 252, 0);
     } else {
       fill(252, 252, 0);
     }
     break;
     
    case 12:
     image(imagenPuertaCasaAbadonada, 0, 0);
     textSize(16);
     textAlign(CENTER, TOP);
     fill(252, 252, 0);
     text("Ricitos toca la puerta de la casa abandonada\nEspera unos segundos...\n Y una anciana la recibe.\nEsta tenia una cara peculiar y tenebrosa...\nLa anciana le ofrece entrar a su casa.", width/2, 20);
     rect(width - 160, height/2 - 15, 120, 30);
     fill(0);
     textAlign(CENTER, CENTER);
     text("Avanzar", width - 100, height/2);
     if (isButtonPressed) {
       fill(252, 252, 0);
     } else {
       fill(252, 252, 0);
     }
     break;
     
    case 13:
      image(imagenRicitosConLaTorta, 0, 0);
      textSize(16);
      textAlign(CENTER, TOP);
      fill(252, 252, 0);
      text("La anciana le ofrece una porcion de torta a Ricitos\n" + 
           "Para comer porque habia estado en el bosque mucho tiempo\ny tenia hambre.", width/2, 20);
      rect(width/2 - 50, height/2, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Avanzar", width/2, height/2 + 15);
      if (isButtonPressed) {
        fill(0, 255, 0);
      } else {
        fill(255);
      }
      break;
      
    case 14:
      image(imageRicitosDesmayada, 0, 0);
      textSize(16);
      textAlign(CENTER, TOP);
      fill(252, 252, 0);
      text("Ricitos cae desmayada por la torta, la cual estaba envenenada.\nFin...", width/2, 20);
      rect(width - 120, height - 50, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Reiniciar", width - 70, height - 35);
      if (isButtonPressed) {
        fill(252, 252, 0);
      } else {
        fill(252, 252, 0);
      }
      break;
      
    case 15:
      image(imageRicitosYLosOsos, 0, 0);
      textSize(15);
      textAlign(CENTER, TOP);
      fill(252, 252, 0);
      text("Ricitos al pasear por el bosque se encuentra una familia de osos bastantes peculiares.\n" +
           "Estos hablaban\n" + 
           "Ricitos le dice a los osos que se encuntra perdida,\nestos al enterarse eso invitan a Ricitos a su casa", width/2, 450);
      rect(width - 120, height - 50, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Continuar", width - 70, height - 35);
      if (isButtonPressed) {
        fill(0, 255, 0);
      } else {
        fill(255);
      }
      break;
      
    case 16:
      image(imageRicitosYLosOsosComiendo, 0, 0);
      textSize(16);
      textAlign(CENTER, TOP);
      fill(252, 252, 0);
      text("Ricitos y los osos llegan a la casa donde ellos vivian\n"+
           "Empiezan a charlar entre ellos y\n Ricitos decide hablar de porque se encontraba sola en el bosque.\n"+
           "Ella no la pasaba bien en su pueblo\n"  +
           "Pero con los osos estaba muy feliz y contenta.\n" +
           "Entonces fue asi como los osos le propusieron vivir con ellos\nY alli vivieron felices para siempre\nFin .", width/2, 20);
      rect(width/2 - 50, height/2, 100, 30);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Reiniciar", width/2, height/2 + 15);
      if (isButtonPressed) {
        fill(0, 255, 0);
      } else {
        fill(255);
      }
      break;
  }
}

void mousePressed() {
  if (pantallaActual == 0 && mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 && mouseY < height/2 + 30) {
    isButtonPressed = true;
    pantallaActual = 1;
  }

  if (pantallaActual == 1 && mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > (height/2 + 50) && mouseY < (height/2 + 80)) {
    isButtonPressed = true;
    pantallaActual = 2;
  }
  
  if (pantallaActual == 2 && mouseX > 20 && mouseX < 80 && mouseY > (height/2 - 15) && mouseY < (height/2 + 15)) {
    isButtonPressed = true;
    pantallaActual = 3;
  }

  if (pantallaActual == 3 && mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 + 50 && mouseY < height/2 + 80) {
    isButtonPressed = true;
    pantallaActual = 4;
  }

  if (pantallaActual == 4 && mouseX > width - 160 && mouseX < width - 40 && mouseY > height/2 - 15 && mouseY < height/2 + 15) {
      isButtonPressed = true;
      pantallaActual = 5;
  }
 
  if (pantallaActual == 5 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
    isButtonPressed = true;
    pantallaActual = 6;
  }
  
  if (pantallaActual == 6 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
    isButtonPressed = true;
    pantallaActual = 7;
  }
  if (pantallaActual == 7 && mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 && mouseY < height/2 + 30) {
    isButtonPressed = true;
    pantallaActual = 8;
  } 
  if (pantallaActual == 8 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
    isButtonPressed = true;
    pantallaActual = 9;
  }
  if (pantallaActual == 9 && mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > (height/2) && mouseY < (height/2 + 30)) {
    isButtonPressed = true;
    pantallaActual = 10;
  }
  if (pantallaActual == 10 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
    isButtonPressed = true;
    pantallaActual = 0;
  }
  if (pantallaActual == 2 && mouseX > (width - 110) && mouseX < (width - 50) && mouseY > (height/2 - 15) && mouseY < (height/2 + 15)) {
    isButtonPressed = true;
    pantallaActual = 11;
  }
  if (pantallaActual == 11  && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
    isButtonPressed = true;
    pantallaActual = 12;
  }
  if (pantallaActual == 12  && mouseX > (width - 160) && mouseX < (width - 40) && mouseY > (height/2 - 15) && mouseY < (height/2 + 15)) {
    isButtonPressed = true;
    pantallaActual = 13;
  }
  if (pantallaActual == 13  && mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > (height/2) && mouseY < (height/2 + 30)) {
    isButtonPressed = true;
    pantallaActual = 14;
  }
  if (pantallaActual == 14 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
    isButtonPressed = true;
    pantallaActual = 0;
  }
  if (pantallaActual == 2 && mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 && mouseY < height/2 + 30) {
    isButtonPressed = true;
    pantallaActual = 15;
  }
  if (pantallaActual == 15  && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
    isButtonPressed = true;
    pantallaActual = 16;
  }
  if (pantallaActual == 16  && mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > (height/2) && mouseY < (height/2 + 30)) {
    isButtonPressed = true;
    pantallaActual = 0;
  }
}

void controlarHistoria() {
  switch (pantallaActual) {
    case 0:
      break;

    case 1:
      break;

    case 2:
      break;

    case 3:
      break;

    case 4:
      break;
      
    case 5:
      break;
      
    case 6:
      break;
      
    case 7:
      break;
      
    case 8:
      break;

    case 9:
      break;
      
    case 10:
      break;
      
    case 11:
      break;
      
    case 12:
      break;
      
    case 13:
      break;
      
    case 14:
      break;
      
    case 15:
      break;
      
    case 16:
      break;
  }
}

void keyPressed() {
  controlarHistoria();
}
