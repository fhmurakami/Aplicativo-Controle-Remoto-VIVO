uint8_t val, i;
uint8_t cont[48] = {0};
int IRledPin =  13;    // LED connected to digital pin 13

// The setup() method runs once, when the sketch starts

void setup()   {
  // initialize the IR digital pin as an output:
  pinMode(IRledPin, OUTPUT);

  Serial.begin(115200);

}

void loop()
{
  EnviaIR();
}
