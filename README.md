# Pi web webcam

## Development & building

- Run build command:
  - `./build-showmewebcam.sh raspberrypi0w $WIFI_SSID $WIFI_PSK` to build Raspberry Pi Zero W (with Wifi) image.
  - `./build-showmewebcam.sh raspberrypi0 $WIFI_SSID $WIFI_PSK` to build Raspberry Pi Zero (without Wifi) image.
  - `./build-showmewebcam.sh raspberrypi4 $WIFI_SSID $WIFI_PSK` to build Raspberry Pi 4 image.
- The resulting image `sdcard.img` will be in the `output/$BOARDNAME/images` folder

**Note:** If you want to use external Buildroot directory you need to set the Buildroot path manually, e.g. `BUILDROOT_DIR=../buildroot ./build-showmewebcam.sh raspberrypi0`

## Credits

- David Hunt: http://www.davidhunt.ie/raspberry-pi-zero-with-pi-camera-as-usb-webcam/
- Petr Vavřín: [uvc-gadget](https://github.com/peterbay/uvc-gadget)
- Buildroot
- ARM fever: https://armphibian.wordpress.com/2019/10/01/how-to-build-raspberry-pi-zero-w-buildroot-image/
- The repository icon is attributed to the GNOME project