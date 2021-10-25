# Firmware

The firmware is built and flashed using the
[`esphome` tool](https://esphome.io/guides/getting_started_command_line.html).

Once `esphome` is installed on your machine, open a terminal and navigate to
the `/firmware` directory of this project.

First, we want to configure the passwords for your device. These include your
WiFi password so that the device can connect to your network.

To do this, copy the `secrets.sample.yaml` file, paste it to the directory and
rename it to `secrets.yaml`. Open it in any editor and change the values to
your liking.

Second, we have to build and flash the firmware.
To do that, connect the device to your computer via USB, then run
`esphome run ./air_quality_box.yaml`. The tool will go through the
process of fetching all dependencies, building and flashing the firmware to the
device.

When prompted with a question of how you want to flash the device
(via WiFi/OTA or USB) choose USB and hit `Enter`.

The process will show you a percentage progress indicator, once it reaches
`100%` the device is ready to use, but the process won't terminate and will
display you all logs form the device. You can just `Ctrl`+`C` out of the
process at that point and un-plug the device.

## Troubleshooting

### SPS30 (particle/dust sensor) reading abnormally high values

This can be a problem with sensors bought from some sellers.

The readings are abnormally high because the sensor is full of dust (which got
there either while shipping, storage or acquisition).

To fix this the auto-cleaning routine needs to be run on the device.
This can be done manually, but it's also configured to run after the device
has been powered on for longer than 7 days.

The ESPHome SPS30 component currently doesn't support triggering auto-cleaning
nor changing the auto-cleaning interval. Therefore, if you want to change these
values you will have to install the
[Arduino IDE](https://www.arduino.cc/en/software)
on your machine,
add [paulvha's SPS30 library](https://github.com/paulvha/sps30),
and then flash the
[Example 2: SPS30 Basic Readings - Auto-clean](https://github.com/paulvha/sps30/blob/master/examples/Example2_sps30_BasicReadings_autoclean/Example2_sps30_BasicReadings_autoclean.ino)
sketch. In it you can trigger auto-cleaning and change the auto-clean interval -
read the comments in the sketch, they will guide you through everything you need
do or set (remember to switch to I2C communication!).

### MH-Z19B (CO₂ sensor) reading abnormally high values

Initial high readings are normal for this sensor. It will need about 1 to 3h so
settle in and auto-calibrate itself.

Just be patient.

### The device doesn't show up in Home Assistant

Double check that you entered your WiFi credentials correctly in `secrets.yaml`.

If the device failed to connect to your WiFi it will create it's own hotspot
names `Air-Quality-Box Fallback Hotspot`. Try looking for it and connecting to
it to configure the WiFi credentials correctly, or try correcting them in
`secrets.yaml` and re-flashing the device with
`esphome run ./air_quality_box.yaml`.

Also, check that Home Assistant can see and communicate with the devices on
the WiFi network you connected this device to.
