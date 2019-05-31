# Lux Swarm

## Hardware
* ESP8266 development board, Wemos D1 Mini (https://wiki.wemos.cc/products:d1:d1_mini)
* WS2811 protocol addressable LEDs (aka NeoPixels)
  * RGB LED shield (plugs into D1 Mini) (https://wiki.wemos.cc/products:d1_mini_shields:rgb_led_shield)
  * NeoPixels (https://wiki.wemos.cc/products:d1_mini_shields:rgb_led_shield)

## Software

* Lux Swarm files, including all the examples (https://github.com/mangtronix/LuxSwarm)

* Mac only: Serial driver for CH340, to connect to D1 Mini hardware to flash code (https://wiki.wemos.cc/downloads)
  * You need to install the driver and then go to the system Security preferences to allow the extension

* ESPixelStick release 3.0 (https://github.com/forkineye/ESPixelStick/releases/tag/v3.0)
  * Can flash using the Java flash tool, need to replace the firmware/firmware.json file to add the correct settings for flashing the D1 Mini (https://github.com/mangtronix/LuxSwarm/blob/master/Code/firmware.json)
  
* Arduino (https://www.arduino.cc/en/Main/Software)
 * The Serial Monitor can be used to check the output from the ESPixelStick connected over USB
   * The Serial Monitor baud rate must be set to 115200

* QLC+ (https://www.qlcplus.org/downloads.html)
  * Example files (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/QLC)

### Control Software

You can control the Lux Swarm any software that can output MIDI or network DMX (sACN / E1.31 protocol)

* Mad Mapper (https://madmapper.com/)
  * Settings:
    * DMX Output Device: SACN
    * Interface: (select connection to AP, either via WiFi or LAN)
    * Maximum FPS: 25
  * MadLight tutorial (https://www.youtube.com/watch?v=1a7Rqk7nGtM)

* Processing (https://processing.org/download/)
  * Example (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/Processing/Light_Notes)

* Ableton Live (https://www.ableton.com/en/trial/)
  * Example (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/Ableton/Simple%20Beat%20Project)


