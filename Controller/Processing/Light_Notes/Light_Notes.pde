import themidibus.*; //Import the library

// Control LuxSwarm lighting nodes from Processing!
// Shows how to turn the nodes on/off via CC messages or notes
//
// Adapted from MidiBus example

// On Mac, to create a name virtual MIDI connection that we can use to connect to QLC:
// - Open Audio MIDI Setup.app
// - In the menu: Window -> Show MIDI Studio
// - Double click on IAC Driver
// - Under Ports click + to add a port
// - Double click the port name and change it to "To QLC"

// Start the sketch, then go into QLC
// - Go to the Inputs/Outputs tab
// - Check the box for Input for MIDI: IAC Driver
// - If the Processing sketch is running, you should see a small joystick icon appear
//   on Universe 1 as the notes are sent from Processing to QLC
  

MidiBus myBus; // The MidiBus

void setup() {
  size(400, 400);
  background(0);

  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
  
  // Create a new MidiBus connected to our "To QLC" port
  myBus = new MidiBus(this, -1, "To QLC");
}

void draw() {
  
  // Use MIDI channel "1"
  int channel = 0;
  
  // Turn all the nodes on with notes
  // The first node (node 1) has note 48 (C2/C3)
  int nodeCount = 5;
  int baseNote = 12;
  
  int delayBetweenNotes = 200;
  
  println("Turning on all nodes");
  for (int node = 0; node < nodeCount; node++) {
    int pitch = baseNote + node;
    int velocity = 100;
    
    println("  " + (node + 1) + ": note " + (pitch) + ", velocity " + velocity);
    myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
    
    delay(delayBetweenNotes);
  }
  delay(2000);
  
  println("Turning off all nodes");
  for (int node = 0; node < nodeCount; node++) {
    int pitch = baseNote + node;
    int velocity = 0;
    
    println("  " + (node + 1) + ": note " + (pitch) + ", velocity " + velocity);
    myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff
    
    delay(delayBetweenNotes);
  }

  delay(2000);


/*
  // Go through all the nodes and turn each one on in sequence
  int baseNote = 8;
  int baseBrightnessCC = 0;
  int baseHueCC = 20;
  
  int brightness = 90;
  float hue = 0;
  int hueMidiValue = 0; 

  
  for (int node = 1; node <= nodeCount; node++) {
    hue = node / (float)nodeCount; // Set the hue to a value 0..1 mapped across the nodes, node rainbow!
    hueMidiValue = (int)(hue * 127); // Midi values are 0..127
    
    
    // Set the hue of the node
    println("Setting node " + node + " to hue " + hueMidiValue);
    myBus.sendControllerChange(channel, baseHueCC + node, hueMidiValue);
    
    myBus.sendControllerChange(channel, baseBrightnessCC + node, brightness);
    delay(500);
    myBus.sendControllerChange(channel, baseBrightnessCC + node, 0); // Turn off node
    delay(500);
  }
*/

  
}

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
