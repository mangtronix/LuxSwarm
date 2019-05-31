# Lux Swarm

![Lux Swarm with laptop](https://www.michaelang.com/blog/wp-content/uploads/2019/05/IG_20190328_Laptop-plus-lights_IMG-8808.jpg)

Lux Swarm is a set of tools and techniques curated by Michael Ang for creating wireless lighting nodes that can be carried in a backpack and quickly set up to create temporary light installations.

For an overview of the project, see https://www.michaelang.com/project/lux-swarm

This repository collects code, project files for the control software, and CAD designs for enclosures / wearables, etc.

## Hardware
* ESP8266 development board, Wemos D1 Mini (https://wiki.wemos.cc/products:d1:d1_mini)
* WS2811 protocol addressable LEDs (aka NeoPixels)
  * RGB LED shield (plugs into D1 Mini) (https://wiki.wemos.cc/products:d1_mini_shields:rgb_led_shield)
  * NeoPixels (https://wiki.wemos.cc/products:d1_mini_shields:rgb_led_shield)


![Lux Swarm nodes](https://www.michaelang.com/blog/wp-content/uploads/2019/05/IG_20190328_Hack-hack_MYA_4580.jpg)

## Software

* Lux Swarm files, including all the examples (https://github.com/mangtronix/LuxSwarm)

* Mac only: Serial driver for CH340, to connect to D1 Mini hardware to flash code (https://wiki.wemos.cc/downloads)
  * You need to install the driver and then go to the system Security preferences to allow the extension

* ESPixelStick release 3.0 (https://github.com/forkineye/ESPixelStick/releases/tag/v3.0)
  * Can flash using the Java flash tool, need to replace the firmware/firmware.json file to add the correct settings for flashing the D1 Mini (https://github.com/mangtronix/LuxSwarm/blob/master/Code/firmware.json)
  
* Arduino (https://www.arduino.cc/en/Main/Software)
  * The Serial Monitor can be used to check the output from the ESPixelStick connected over USB
    * The Serial Monitor baud rate must be set to 115200


### Control Software

You can control the Lux Swarm any software that can output DMX using the sACN / E1.31 protocol

* Mad Mapper (https://madmapper.com/)
  * Settings:
    * DMX Output Device: SACN
    * Interface: (select connection to AP, either via WiFi or LAN)
    * Maximum FPS: 25
  * MadLight tutorial (https://www.youtube.com/watch?v=1a7Rqk7nGtM)
  * Example file (not the simplest) used at Le Zoo (https://github.com/mangtronix/LuxSwarm/blob/master/Controller/MadMapper/LeZoo.mad)

* QLC+ (https://www.qlcplus.org/downloads.html)
  * Example files (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/QLC)

Mad Mapper and QLC can be controlled using hardware MIDI controllers, or you can output MIDI from programs like Ableton Live or Processing.

* Processing (https://processing.org/download/)
  * Example (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/Processing/Light_Notes)

* Ableton Live (https://www.ableton.com/en/trial/)
  * Example (https://github.com/mangtronix/LuxSwarm/tree/master/Controller/Ableton/Simple%20Beat%20Project)

![Lux Swarm at Le Zoo](https://www.michaelang.com/blog/wp-content/uploads/2019/05/IG_20190526_Lux-Swarm-club-debut_IMG_0838.jpg)

