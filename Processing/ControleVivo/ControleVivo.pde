import processing.serial.*;  //<>//

PImage fundo, power, volUp, volDown;
Serial port;                       // Create object from Serial class

int cod;

void setup() { 
  fundo = loadImage("controle-remoto-vivo-fibra01.jpg");
  power = loadImage("power-button.jpg");
  volUp = loadImage("plus-sign.jpg");
  volDown = loadImage("minus-sign.jpg");
  size(183, 600);
  cursor(HAND);
  noStroke(); 
  //stroke(255);
  frameRate(10);
  //for (int i=0; i<30; i++) {
  //  cod[i] = false;
  //}

  // Open the port that the board is connected to and use the same speed (9600 bps)
  String portName = Serial.list()[0];
  port = new Serial(this, portName, 115200);
} 

void draw() { 
  background(100);
  image(fundo, 0, 0);
  image(power, 10, 560);
  image(volUp, 160, 540);
  image(volDown, 160, 570);
  noFill();

  switch(cod) {
  case 1: 
    {
      port.write(1);
      cod = 0;
      break;
    }
  case 2:
    {
      port.write(13);
      cod = 0;
      break;
    }
  case 3:
    {
      port.write(14);
      cod = 0;
      break;
    }
  case 4:
    {
      port.write(16);
      cod = 0;
      break;
    }
  case 5:
    {
      port.write(17);
      cod = 0;
      break;
    }
  case 6:
    {
      port.write(18);
      cod = 0;
      break;
    }
  case 7:
    {
      port.write(19);
      cod = 0;
      break;
    }
  case 8:
    {
      port.write(21); 
      cod = 0;
      break;
    }
  case 9:
    {
      port.write(26);
      cod = 0;
      break;
    }
  case 10:
    {
      port.write(29);
      cod = 0;
      break;
    }
  case 11:
    {
      port.write(28); 
      cod = 0;
      break;
    }
  case 12:
    {
      port.write(32);
      cod = 0;
      break;
    }
  case 13:
    {
      port.write(27);
      cod = 0;
      break;
    }
  case 14:
    {
      port.write(30);
      cod = 0;
      break;
    }
  case 15:
    {
      port.write(31);
      cod = 0;
      break;
    }
  case 16:
    {
      port.write(33);
      cod = 0;
      break;
    }
  case 17:
    {
      port.write(34);
      cod = 0;
      break;
    }
  case 18:
    {
      port.write(35);
      cod = 0;
      break;
    }
  case 19:
    {
      port.write(36);
      cod = 0;
      break;
    }
  case 20:
    {
      port.write(37);
      cod = 0;
      break;
    }
  case 21:
    { //<>//
      port.write(38);
      cod = 0;
      break;
    }
  case 22:
    {
      port.write(39);
      cod = 0;
      break;
    }
  case 23:
    {
      port.write(40);
      cod = 0;
      break;
    }
  case 24:
    {
      port.write(41);
      cod = 0;
      break;
    }
  case 25:
    {
      port.write(42);
      cod = 0;
      break;
    }

  case 26:
    {
      port.write(43);
      cod = 0;
      break;
    }
  case 27:
    {
      port.write(44);
      cod = 0;
      break;
    }
  case 28:
    {
      port.write(45);
      cod = 0;
      break;
    }
  case 29:
    {
      port.write(46);
      cod = 0;
      break;
    }
  case 30:
    {
      port.write(47);
      cod = 0;
      break;
    }
  default:
    {
      port.write('0');
      cod = 0;
      break;
    }
  } 
  rect(80.5, 20, 20, 20);  // POWER 

  rect(79, 150, 25, 20);  //MENU

  rect(35, 182, 20, 20); //VOLTAR

  rect(70, 190, 45, 20); //CIMA

  rect(49, 210, 20, 45); //ESQUERDA

  rect(80, 220, 25, 25); //OK

  rect(114, 210, 20, 45);  //DIREITA

  rect(70, 255, 45, 20);  //BAIXO

  rect(30, 315, 20, 20);  //VOL +

  rect(33, 350, 20, 20);  //VOL -

  rect(133, 315, 20, 20);  //CH +

  rect(130, 350, 20, 20);  //CH -

  rect(70, 315, 45, 20);  //GUIA

  rect(65, 345, 20, 20);  //MUDO

  rect(97, 345, 20, 20);  //CH RECENTE

  rect(40, 390, 20, 20);  //1

  rect(82, 390, 20, 20);  //2

  rect(123, 390, 20, 20);  //3

  rect(40, 420, 20, 20);  //4

  rect(82, 420, 20, 20);  //5

  rect(123, 420, 20, 20);  //6

  rect(40, 450, 20, 20);  //7

  rect(82, 450, 20, 20);  //8

  rect(123, 450, 20, 20);  //9

  rect(40, 482, 20, 20);  //APAGAR

  rect(82, 482, 20, 20);  //0

  rect(123, 482, 20, 20);  //ENTER/ZOOM

  rect(10, 560, 20, 20);  //POWER TV

  rect(160, 540, 20, 20);  //VOL + TV
  
  fill(0);
  text("VOL", 158, 570);
  noFill();

  rect(160, 570, 20, 20);  //VOL - TV

} 

void mouseClicked() {
  if (mouseOverRect1() == true) {
    cod = 1;
  }
  //else {
  //cod = 0;
  //}
  if (mouseOverRect2() == true) {
    cod = 2;
  }
  if (mouseOverRect3() == true) {
    cod = 3;
  }
  if (mouseOverRect4() == true) {
    cod = 4;
  }
  if (mouseOverRect5() == true) {
    cod = 5;
  }
  if (mouseOverRect6() == true) {
    cod = 6;
  }
  if (mouseOverRect7() == true) {
    cod = 7;
  }
  if (mouseOverRect8() == true) {
    cod = 8;
  }
  if (mouseOverRect9() == true) {
    cod = 9;
  }
  if (mouseOverRect10() == true) {
    cod = 10;
  }
  if (mouseOverRect11() == true) {
    cod = 11;
  }
  if (mouseOverRect12() == true) {
    cod = 12;
  }
  if (mouseOverRect13() == true) {
    cod = 13;
  }
  if (mouseOverRect14() == true) {
    cod = 14;
  }
  if (mouseOverRect15() == true) {
    cod = 15;
  }
  if (mouseOverRect16() == true) {
    cod =  16;
  }
  if (mouseOverRect17() == true) {
    cod =  17;
  }
  if (mouseOverRect18() == true) {
    cod =  18;
  }
  if (mouseOverRect19() == true) {
    cod =  19;
  }
  if (mouseOverRect20() == true) {
    cod = 20;
  }
  if (mouseOverRect21() == true) {
    cod = 21;
  }
  if (mouseOverRect22() == true) {
    cod = 22;
  }
  if (mouseOverRect23() == true) {
    cod = 23;
  }
  if (mouseOverRect24() == true) {
    cod = 24;
  }
  if (mouseOverRect25() == true) {
    cod = 25;
  }
  if (mouseOverRect26() == true) {
    cod = 26;
  }
  if (mouseOverRect27() == true) {
    cod = 27;
  }
  if (mouseOverRect28() == true) {
    cod = 28;
  }
  if (mouseOverRect29() == true) {
    cod = 29;
  }
  if (mouseOverRect30() == true) {
    cod = 30;
  }
}

boolean mouseOverRect1() {        // Test if mouse is over square 
  return ((mouseX >= 80.5) && (mouseX <= 100.5) && (mouseY >= 20) && (mouseY <= 40));
} 

boolean mouseOverRect2() {        // Test if mouse is over square 
  return ((mouseX >= 79) && (mouseX <= 104) && (mouseY >= 150) && (mouseY <= 170));
} 

boolean mouseOverRect3() {        // Test if mouse is over square 
  return ((mouseX >= 35) && (mouseX <= 55) && (mouseY >= 182) && (mouseY <= 202));
} 

boolean mouseOverRect4() {        // Test if mouse is over square 
  return ((mouseX >= 70) && (mouseX <= 115) && (mouseY >= 190) && (mouseY <= 210));
} 

boolean mouseOverRect5() {        // Test if mouse is over square 
  return ((mouseX >= 49) && (mouseX <= 69) && (mouseY >= 210) && (mouseY <= 255));
} 

boolean mouseOverRect6() {        // Test if mouse is over square 
  return ((mouseX >= 80) && (mouseX <= 105) && (mouseY >= 220) && (mouseY <= 245));
} 

boolean mouseOverRect7() {        // Test if mouse is over square 
  return ((mouseX >= 114) && (mouseX <= 134) && (mouseY >= 210) && (mouseY <= 255));
} 

boolean mouseOverRect8() {        // Test if mouse is over square 
  return ((mouseX >= 70) && (mouseX <= 115) && (mouseY >= 255) && (mouseY <= 275));
} 

boolean mouseOverRect9() {        // Test if mouse is over square 
  return ((mouseX >= 30) && (mouseX <= 50) && (mouseY >= 315) && (mouseY <= 335));
} 

boolean mouseOverRect10() {        // Test if mouse is over square 
  return ((mouseX >= 33) && (mouseX <= 53) && (mouseY >= 350) && (mouseY <= 370));
} 

boolean mouseOverRect11() {        // Test if mouse is over square 
  return ((mouseX >= 133) && (mouseX <= 153) && (mouseY >= 315) && (mouseY <= 335));
} 

boolean mouseOverRect12() {        // Test if mouse is over square 
  return ((mouseX >= 130) && (mouseX <= 150) && (mouseY >= 350) && (mouseY <= 370));
} 

boolean mouseOverRect13() {        // Test if mouse is over square 
  return ((mouseX >= 70) && (mouseX <= 115) && (mouseY >= 315) && (mouseY <= 335));
} 

boolean mouseOverRect14() {        // Test if mouse is over square 
  return ((mouseX >= 65) && (mouseX <= 85) && (mouseY >= 345) && (mouseY <= 365));
} 

boolean mouseOverRect15() {        // Test if mouse is over square 
  return ((mouseX >= 97) && (mouseX <= 117) && (mouseY >= 345) && (mouseY <= 365));
}

boolean mouseOverRect16() {        // Test if mouse is over square 
  return ((mouseX >= 40) && (mouseX <= 60) && (mouseY >= 390) && (mouseY <= 410));
} 

boolean mouseOverRect17() {        // Test if mouse is over square 
  return ((mouseX >= 82) && (mouseX <= 102) && (mouseY >= 390) && (mouseY <= 410));
} 

boolean mouseOverRect18() {        // Test if mouse is over square 
  return ((mouseX >= 123) && (mouseX <= 143) && (mouseY >= 390) && (mouseY <= 410));
} 

boolean mouseOverRect19() {        // Test if mouse is over square 
  return ((mouseX >= 40) && (mouseX <= 60) && (mouseY >= 420) && (mouseY <= 440));
} 

boolean mouseOverRect20() {        // Test if mouse is over square 
  return ((mouseX >= 82) && (mouseX <= 102) && (mouseY >= 420) && (mouseY <= 440));
} 

boolean mouseOverRect21() {        // Test if mouse is over square 
  return ((mouseX >= 123) && (mouseX <= 143) && (mouseY >= 420) && (mouseY <= 440));
} 

boolean mouseOverRect22() {        // Test if mouse is over square 
  return ((mouseX >= 40) && (mouseX <= 60) && (mouseY >= 450) && (mouseY <= 470));
} 

boolean mouseOverRect23() {        // Test if mouse is over square 
  return ((mouseX >= 82) && (mouseX <= 102) && (mouseY >= 450) && (mouseY <= 470));
} 

boolean mouseOverRect24() {        // Test if mouse is over square 
  return ((mouseX >= 123) && (mouseX <= 143) && (mouseY >= 450) && (mouseY <= 470));
} 

boolean mouseOverRect25() {        // Test if mouse is over square 
  return ((mouseX >= 40) && (mouseX <= 60) && (mouseY >= 482) && (mouseY <= 502));
} 

boolean mouseOverRect26() {        // Test if mouse is over square 
  return ((mouseX >= 82) && (mouseX <= 102) && (mouseY >= 482) && (mouseY <= 502));
} 

boolean mouseOverRect27() {        // Test if mouse is over square 
  return ((mouseX >= 123) && (mouseX <= 143) && (mouseY >= 482) && (mouseY <= 502));
} 

boolean mouseOverRect28() {        // Test if mouse is over square 
  return ((mouseX >= 10) && (mouseX <= 30) && (mouseY >= 560) && (mouseY <= 580));
} 

boolean mouseOverRect29() {        // Test if mouse is over square 
  return ((mouseX >= 160) && (mouseX <= 180) && (mouseY >= 540) && (mouseY <= 560));
} 

boolean mouseOverRect30() {        // Test if mouse is over square 
  return ((mouseX >= 160) && (mouseX <= 180) && (mouseY >= 570) && (mouseY <= 590));
} 