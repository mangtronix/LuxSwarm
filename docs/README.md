# Lux Swarm

## Software

* Lux Swarm files, including all the examples (https://github.com/mangtronix/LuxSwarm)

* Serial driver for CH340, to connect to D1 Mini hardware to flash code (https://wiki.wemos.cc/downloads)
  * Mac - You need to install it and then allow the system extension in Security preferences (and reboot)

* ESPixelStick release 3.0 (https://github.com/forkineye/ESPixelStick/releases/tag/v3.0)
  * Can flash using the Java flash tool, need to replace the firmware/firmware.json file (https://github.com/mangtronix/LuxSwarm/blob/master/Code/firmware.json)

* QLC+ (https://www.qlcplus.org/downloads.html)
  * Example files (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/QLC)

### Control Software

You can control the Lux Swarm any software that can output MIDI or network DMX (sACN / E1.31 protocol)

* Processing (https://processing.org/download/)
  * Example (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/Processing/Light_Notes)

* Ableton Live (https://www.ableton.com/en/trial/)
  * Example (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/Ableton/Simple%20Beat%20Project)


### Optional

* Arduino (https://www.arduino.cc/en/Main/Software)
 * Serial Monitor can be used to check the output from the ESPixelStick connected over USB
