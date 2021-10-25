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

## Updating the firmware

To update the firmware you just have to run `esphome run ./air_quality_box.yaml`
again.

If your device is connected to the same WiFi as your computer then you can
choose `Wifi`, or `OTA`, or `air-quality-box.local` from the prompt.

If the device isn't connected to you WiFi then you will have to connect it via
USB.

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

### SPS30 (particle/dust sensor) reading the same value for all or some particle size ranges

First, give the device some time to settle in. About 1 to 3h should be enough.

Second, this is somewhat normal depending on the relative humidity of your room.

All cheap, laser-based, particle sensors face this problem in high-humidity
environments. The particles/dust in the air absorb some of the humidity, or the
humidity can condense on the particles, which makes them look simultaneously
the correct size and larger to the sensor as they scatter and diffract light.

This artificially inflates the numbers of larger particles to the point that
they can be the same as the numbers of smaller particles (up to the 2nd decimal).

If you are concerned about your sensor not working correctly, check the device
logs using `esphome logs ./air_quality_box.yaml` to see all 6 decimal places for
each measurement. They should be different somewhere after the 2nd decimal
place.

Note that all values after the 2nd decimal place in a reading are mostly noise
and are therefore discarded.

### MH-Z19B (CO₂ sensor) reading abnormally high or low values

Initial high readings are normal for this sensor. It will need about 1 to 3h so
settle in and auto-calibrate itself.

Just be patient.

### MH-Z19B (CO₂ sensor) flat-lines at 400ppm

That's a limitation of the sensor. It can't measure anything below 400ppm CO₂.

### The device doesn't show up in Home Assistant

Double check that you entered your WiFi credentials correctly in `secrets.yaml`.

If the device failed to connect to your WiFi it will create it's own hotspot
names `Air-Quality-Box Fallback Hotspot`. Try looking for it and connecting to
it to configure the WiFi credentials correctly, or try correcting them in
`secrets.yaml` and re-flashing the device with
`esphome run ./air_quality_box.yaml`.

Also, check that Home Assistant can see and communicate with the devices on
the WiFi network you connected this device to.
