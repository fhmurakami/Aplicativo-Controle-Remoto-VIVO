void EnviaIR() {
  if (Serial.available()) {
    val = i = Serial.read();
  }
  if (val == 1) {
    if (cont[i] == 0) {
      SendBtPowerVivo1();
      cont[i] = 1;
    } else if (cont[i] == 1) {
      SendBtPowerVivo2();
      cont[i] = 0;
    }
  }
  //  else if ( val == 2)
  //    SendBtRec();
  //  else if ( val == 3)
  //    SendBtRew();
  //  else if ( val == 4)
  //    SendBtFF();
  //  else if ( val == 5)
  //    SendBtTVVideo();
  //  else if ( val == 6)
  //    SendBtStop();
  //  else if ( val == 7)
  //    SendBtPause();
  //  else if ( val == 8)
  //    SendBtPlay();
  //  else if ( val == 9)
  //    SendBtReplay();
  //  else if ( val == 10)
  //    SendBtSkip();
  //  else if ( val == 11)
  //    SendBtVivoPlay();
  //  else if ( val == 12)
  //    SendBtGravacoes();
  else if ( val == 13)
    SendBtMenu();
  else if ( val == 14)
    SendBtVoltar();
  //  else if ( val == 15)
  //    SendBtInteratividade();
  else if ( val == 16)
    SendBtCima();
  else if ( val == 17)
    SendBtEsquerda();
  else if ( val == 18)
    SendBtOK();
  else if ( val == 19)
    SendBtDireita();
  //  else if ( val == 20)
  //    SendBtVerTV();
  else if ( val == 21)
    SendBtBaixo();
  //  else if ( val == 22)
  //    SendBtInfo();
  //  else if ( val == 23)
  //    SendBtA();
  //  else if ( val == 24)
  //    SendBtB();
  //  else if ( val == 25)
  //    SendBtC();
  else if ( val == 26)
    SendBtVolMais();
  else if ( val == 27)
    SendBtGuia();
  else if ( val == 28)
    SendBtChMais();
  else if ( val == 29)
    SendBtVolMenos();
  else if ( val == 30) {
    if (cont[i] == 0) {
      SendBtMudo1();
      cont[i] = 1;
    } else if (cont[i] == 1) {
      SendBtMudo2();
      cont[i] = 0;
    }
  }
  else if ( val == 31)
    SendBtChRecente();
  else if ( val == 32)
    SendBtChMenos();
  else if ( val == 33) {
    if (cont[i] == 0) {
      SendBt1_1();
      cont[i] = 1;
    } else if (cont[i] == 1) {
      SendBt1_2();
      cont[i] = 0;
    }
  }
  else if ( val == 34) {
    if (cont[i] == 0) {
      SendBt2_1();
      cont[i] = 1;
    } else if (cont[i] == 1) {
      SendBt2_2();
      cont[i] = 0;
    }
  }
  else if ( val == 35) {
    if (cont[i] == 0) {
      SendBt3_1();
      cont[i] = 1;
    } else if (cont[i] == 1) {
      SendBt3_2();
      cont[i] = 0;
    }
  }
  else if ( val == 36) {
    if (cont[i] == 0) {
      SendBt4_1();
      cont[i] = 1;
    } else if (cont[i] == 1) {
      SendBt4_2();
      cont[i] = 0;
    }
  }
  else if ( val == 37) {
    if (cont[i] == 0) {
      SendBt5_1();
      cont[i] = 1;
    } else if (cont[i] == 1) {
      SendBt5_2();
      cont[i] = 0;
    }
  }
  else if ( val == 38) {
    if (cont[i] == 0) {
      SendBt6_1();
      cont[i] = 1;
    } else if (cont[i] == 1) {
      SendBt6_2();
      cont[i] = 0;
    }
  }
  else if ( val == 39){
        if (cont[i] == 0){
    SendBt7_1();
    cont[i] = 1;
    } else if (cont[i] == 1){
      SendBt7_2();
      cont[i] = 0;
    }
  }
  else if ( val == 40){
        if (cont[i] == 0){
    SendBt8_1();
    cont[i] = 1;
    } else if (cont[i] == 1){
      SendBt8_2();
      cont[i] = 0;
    }
  }
  else if ( val == 41){
       if (cont[i] == 0){
    SendBt9_1();
    cont[i] = 1;
    } else if (cont[i] == 1){
      SendBt9_2();
      cont[i] = 0;
    } 
  }
  else if ( val == 42)
    SendBtApagar();
  else if ( val == 43){
        if (cont[i] == 0){
    SendBt0_1();
    cont[i] = 1;
    } else if (cont[i] == 1){
      SendBt0_2();
      cont[i] = 0;
    }
  }
  else if ( val == 44)
    SendBtEnter();
  else if ( val == 45)
    SendBtPowerTV();
  else if ( val == 46)
    SendBtVolMaisTV();
  else if ( val == 47)
    SendBtVolMenosTV();
  else
    delay(10);
}

