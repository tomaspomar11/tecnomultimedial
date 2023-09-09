//video:https://www.youtube.com/watch?v=EtdEk7HNFRM&ab_channel=SpookyAM
//tomas pomar 
//legajo 95507/3
let gameState = "start";
let gameOver = false; 

function setup() {
  background(100);
  createCanvas(600, 660);
  Z = 40;
  T = 15;
  pacx = 11 * Z;
  pacy = 16 * Z;
  pacmx = 0;
  pacmy = 0;
  pacd = 0;
  wacn = 0;
  score = 0;
  GT = [14, 16, 18, 20];
  ghostx = [9 * Z, 10 * Z, 11 * Z, 12 * Z];
  ghosty = [10 * Z, 10 * Z, 10 * Z, 10 * Z];
  ghostmx = [1, -1, 0, 0];
  ghostmy = [0, 0, 0, 0];
  ghoststate = [0, 0, 0, 0];
  colorMode(HSB, 256);
  ghostcol = [
    color(00, 200, 255),
    color(220, 125, 255),
    color(120, 200, 255),
    color(20, 150, 255),
  ];
  colorMode(RGB, 256);
  powerpellet = 0;
  pacstate = 0;
  life = 0;

  levelstring = [
    "11111111111111111111111",
    "1          1          1",
    "1+111 1111 1 1111 111+1",
    "1 111 1111 1 1111 111 1",
    "1                     1",
    "1 111 1 1111111 1 111 1",
    "1     1    1    1     1",
    "11111 1111 1 1111 11111",
    "----1 1         1 1----",
    "11111 1 111-111 1 11111",
    "        1-----1        ",
    "11111 1 1111111 1 11111",
    "----1 1         1 1----",
    "11111 1 1111111 1 11111",
    "1         -1-         1",
    "1 111 1111-1-1111 111 1",
    "1+  1   -------   1  +1",
    "111 1 1 1111111 1 1 111",
    "1     1    1    1     1",
    "1 11111111 1 11111111 1",
    "1                     1",
    "11111111111111111111111"
  ];
  w = 23;
  h = 22;
  lvlw = w * Z;
  lvlh = h * Z;
  windowWidth = lvlw;
  windowHeight = lvlh;
  createCanvas(windowWidth, windowHeight);

  aap = [];
  for (i = 0; i < w * h; i++) aap.push(getlevel((i % w) * Z, Z * floor(i / w)) == "1" ? -1 : 0);
}

function getlevel(x, y) {
  var nstr = levelstring[floor(y / Z)];
  return nstr.charAt(floor(x / Z));
}

function setlevel(x, y, v) {
  var nstr = levelstring[floor(y / Z)];
  levelstring[floor(y / Z)] = nstr.substr(0, floor(x / Z)) + v + nstr.substr(floor(x / Z) + 1, 99);
}

function astar(x2, y2, x1, y1) {
  var aa = aap.slice(0);
  var q = [x1, y1];
  //i = 0
  while (true) {
    var x = q.shift();
    var y = q.shift();
    if (aa[x + y * w] == 0) {
      if (abs(x - x2) + abs(y - y2) < 2) {
        //ellipse(x*Z+Z/2,y*Z+Z/2,Z/4)
        return atan2(y - y2, x - x2);
      }
      aa[x + y * w] = 1;
      //text(i++,x*Z+Z/2,y*Z+Z/2)
      q.push(x - 1, y, x + 1, y, x, y - 1, x, y + 1);
    }
  }
}

function draw() {
  if (gameState === "start") {
    background(0, 0, 255);
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Pac-Man", width / 2, height / 10);
    textSize(16);
    text("Instrucciones:", width / 2, height / 2 - 180);
    text("Mueve a Pac-Man con las flechas del teclado.", width / 2, height / 2 - 150);
    text("Come los puntos para ganar puntos.", width / 2, height / 2.8);
    text("Come los puntos grandes para asustar a los fantasmas.", width / 2, height / 2.8 + 30);
    // Botón "Jugar"
    fill(50, 200, 50); 
    rect(width / 2.5, height / 2, 200, 75);
    fill(255);
    textSize(24);
    text("Jugar", width / 2.5 + 100, height / 2 + 40);
    text("Creditos:", 3 * width / 7 + 100, height / 1.5 + 40);
    text("Desarollador:Tomas Pomar", 3 * width / 7 + 100, height / 1.4 + 40);
    text("Diseño:Tomas Pomar", 3 * width / 7 + 100, height / 1.3 + 40);
  } else if (gameState === "game") {
    
    background(color(32, 32, 64));
    for (y = 0; y < 22; y++) {
      nstr = levelstring[y];
      for (x = 0; x < 23; x++)
        if (aap[x + y * w] == -1) {
          fill(color(64, 64, 255));
          rect(x * Z, y * Z, Z, Z);
        } else if (nstr.charAt(x) == " ") {
          fill(color(255, 255, 190));
          ellipse(x * Z + Z / 2, y * Z + Z / 2, Z / 4);
        } else if (nstr.charAt(x) == "+") {
          fill(color(255, 255, 0));
          ellipse(x * Z + Z / 2, y * Z + Z / 2, Z / 2);
        }
    }

    if ((pacx % Z < Z / T && pacy % Z < Z / T) || (pacmx == 0 && pacmy == 0)) {
      if (getlevel(pacx, pacy) == " ") score++;
      if (getlevel(pacx, pacy) == "+") powerpellet = 500;
      if (pacx >= 0) setlevel(pacx, pacy, "-");
      pacx = (pacx + lvlw) % lvlw;
      if (getlevel(pacx, pacy) == " ") score++;
      if (pacx >= 0) setlevel(pacx, pacy, "-");

      if (keyIsDown(LEFT_ARROW)) {
        pacmy = 0;
        pacmx = -Z / T;
        pacd = PI;
      }
      if (keyIsDown(RIGHT_ARROW)) {
        pacmy = 0;
        pacmx = Z / T;
        pacd = 0;
      }
      if (keyIsDown(UP_ARROW)) {
        pacmy = -Z / T;
        pacmx = 0;
        pacd = PI / 2;
      }
      if (keyIsDown(DOWN_ARROW)) {
        pacmy = Z / T;
        pacmx = 0;
        pacd = PI * 3 / 2;
      }

      x = pacx + pacmx * T;
      y = pacy + pacmy * T;
      if (getlevel(x, y) == "1") {
        pacmx = 0;
        pacmy = 0;
      }
    }

    powerpellet--;

    for (i = 0; i < 4; i++) {
      if (ghoststate[i] == 1) {
        for (ix = -1; ix < 2; ix += 2) {
          fill(color(255));
          stroke(color(0));
          ellipse(ghostx[i] + Z / 2 + ix * 8, ghosty[i] + Z / 2, 12);
          fill(color(0));
          ellipse(ghostx[i] + Z / 2 + ix * 8 + 3 * ghostmx[i], ghosty[i] + Z / 2 + 3 * ghostmy[i] + 1, 4);
        }

        if (pacstate == 0) {
          it = 0;
          pmx = ghostmx[i];
          pmy = ghostmy[i];
          if ((ghostx[i] % Z < Z / GT[i] && ghosty[i] % Z < Z / GT[i]) || (ghostmx[i] == 0 && ghostmy[i] == 0)) {
            d = astar(floor(ghostx[i] / Z), floor(ghosty[i] / Z), 11, 10);
            ghostmx[i] = cos(d);
            ghostmy[i] = sin(d);
            if (dist(ghostx[i], ghosty[i], 11 * Z, 10 * Z) < 10) ghoststate[i]++;
          }
          ghostx[i] += ghostmx[i] * Z / GT[i];
          ghosty[i] += ghostmy[i] * Z / GT[i];
        }
      } else {
        noStroke();
        fill((powerpellet > 0 && powerpellet % 20 > 10) || powerpellet > 100 ? color(0, 0, 255) : ghostcol[i]);
        ellipse(ghostx[i] + Z / 2, ghosty[i] + Z / 2, Z - 4);
        rect(ghostx[i] + 2, ghosty[i] + Z / 2, Z - 4, Z / 2);
        for (ix = -1; ix < 2; ix += 2) {
          fill(color(255));
          stroke(color(0));
          ellipse(ghostx[i] + Z / 2 + ix * 8, ghosty[i] + Z / 2, 12);
          fill(color(0));
          ellipse(ghostx[i] + Z / 2 + ix * 8 + 3 * ghostmx[i], ghosty[i] + Z / 2 + 3 * ghostmy[i] + 1, 4);
        }

        if (ghoststate[i] > 0) {
          ghoststate[i]++;
          if (ghoststate[i] > 200) ghoststate[i] = 0;
          while ((ghostx[i] % Z < Z / GT[i] && ghosty[i] % Z < Z / GT[i] && (it++ == 0 || random() < .25)) || (ghostmx[i] == 0 && ghostmy[i] == 0)) {
            ghostmx[i] = random() < .5 ? 1 : -1;
            x = ghostx[i] + ghostmx[i] * Z;
            y = ghosty[i] + ghostmy[i] * Z;
            if (getlevel(x, y) == "1") {
              ghostmx[i] = 0;
              ghostmy[i] = 0;
            }
          }
        } else if (pacstate == 0) {
          it = 0;
          pmx = ghostmx[i];
          pmy = ghostmy[i];
          while ((ghostx[i] % Z < Z / GT[i] && ghosty[i] % Z < Z / GT[i] && (it++ == 0 || random() < .25)) || (ghostmx[i] == 0 && ghostmy[i] == 0)) {
            ghostmx[i] = 0;
            ghostmy[i] = 0;
            ghostx[i] = (ghostx[i] + lvlw) % lvlw;
            if (random() < .4) {
              d = astar(floor(ghostx[i] / Z), floor(ghosty[i] / Z), min(w - 1, round(pacx / Z)), round(pacy / Z));
              if (powerpellet > 0) d += PI;
              ghostmx[i] = cos(d);
              ghostmy[i] = sin(d);
            } else if (random() < .5) {
              ghostmx[i] = pmx;
              ghostmy[i] = pmy;
            } else if (random() < .5) {
              ghostmx[i] = (random() < .5) ? 1 : -1;
            } else {
              ghostmy[i] = (random() < .5) ? 1 : -1;
            }
            x = ghostx[i] + ghostmx[i] * Z;
            y = ghosty[i] + ghostmy[i] * Z;
            if (getlevel(x, y) == "1") {
              ghostmx[i] = 0;
              ghostmy[i] = 0;
            }
          }
          ghostx[i] += ghostmx[i] * Z / GT[i];
          ghosty[i] += ghostmy[i] * Z / GT[i];

          if (dist(ghostx[i], ghosty[i], pacx, pacy) < Z) {
            if (powerpellet > -10) {
              ghoststate[i] = 1;
            } else {
              pacstate = 1;
              gameOver = true; 
            }
          }
        }
      }
    }

    if (pacstate == 0) {
      pacx += pacmx;
      pacy += pacmy;
      if (pacmx != 0 || pacmy != 0)
        wacn += .5;
      else
        wacn = 3;
      wac = abs((wacn % 10) - 5) * PI / 12;

      fill(color(255, 255, 0));
      noStroke();
      beginShape(TRIANGLE_FAN);
      vertex(pacx + Z / 2, pacy + Z / 2);
      for (d = pacd + wac; d < pacd - wac + PI * 2; d += PI / 12) {
        vertex(pacx + Z / 2 + Z / 2 * cos(d), pacy + Z / 2 - Z / 2 * sin(d));
      }
      endShape();
    } else {
      fill(color(255, 255, 0));
      noStroke();
      beginShape(TRIANGLE_FAN);
      vertex(pacx + Z / 2, pacy + Z / 2);
      for (d = PI / 2 + pacstate * PI / 100; d < PI * 5 / 2 - pacstate * PI / 100; d += PI / 20) {
        vertex(pacx + Z / 2 + Z / 2 * cos(d), pacy + Z / 2 - Z / 2 * sin(d));
      }
      endShape();

      if (pacstate++ > 100) {
        
        pacx = 11 * Z;
        pacy = 16 * Z;
        pacmx = 0;
        pacmy = 0;
        pacd = 0;
        wacn = 0;
        pacstate = 0;
        life--;

        if (life < 0) {
          gameOver = true; 
        } else {
          
          ghostx = [9 * Z, 10 * Z, 11 * Z, 12 * Z];
          ghosty = [10 * Z, 10 * Z, 10 * Z, 10 * Z];
        }
      }
    }

    text("Puntos: " + score, 50, 25);

    if (gameOver) {
      fill(255);
      textSize(32);
      textAlign(CENTER, CENTER);
      text("¡Perdiste!", width / 2, height / 2);
      textSize(24);
      text("Puntos totales: " + score, width / 2, height / 2 + 40);
      // Botón "Reiniciar"
      fill(50, 200, 50); // Color verde
      rect(width / 2 - 100, height / 2 + 100, 200, 75);
      fill(255);
      textSize(24);
      text("Reiniciar", width / 2, height / 2 + 140);
    }
  }
}

function mousePressed() {
  if (gameState === "start") {
    if (
      mouseX > width / 4 &&
      mouseX < width / 4 + 200 &&
      mouseY > height / 2 &&
      mouseY < height / 2 + 75
    ) {
      
      gameState = "game"; 
      gameOver = false; 
      score = 0; 
      life = 2; 
    } else if (
      mouseX > 3 * width / 4 &&
      mouseX < 3 * width / 4 + 200 &&
      mouseY > height / 2 &&
      mouseY < height / 2 + 75
    ) {
      
      
      gameState = "credits"; 
    }
  } else if (gameState === "game" && gameOver) {
    if (
      mouseX > width / 2 - 100 &&
      mouseX < width / 2 + 100 &&
      mouseY > height / 2 + 100 &&
      mouseY < height / 2 + 175
    ) {
      
      gameState = "game"; 
      gameOver = false; 
      score = 0; 
      life = 2; 
    }
  }
}

function keyPressed() {
  if (gameState === "game") {
    
  }
}

function keyReleased() {
  if (gameState === "game") {
    
  }
}
