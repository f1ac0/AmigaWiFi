# AmigaWiFi
Three different RS232 WiFi boards with ESP8266 to connect the Amiga to the world with Zimodem or esp\_slip\_router firmwares.

With Zimodem (https://github.com/bozimmerman/Zimodem) by Bo Zimmerman, this board can connect to telnet/BBS/xyzmodem/kermit services over IP on your local network or Internet.

With esp\_slip\_router (https://github.com/martin-ger/esp\_slip\_router) by Martin Ger, this board is a SLIP router to connect your Amiga to Internet.

The boards :
- AmigaWiFi3232_external : plugs into the DB25 serial port. Provides TX/RX/RTS/CTS for communication and hardware flow control. Needs external 5V supply through micro or mini-USB.
- AmigaWiFi3232_internal : connects internally. Provides TX/RX/RTS/CTS for communication and hardware flow control.
- AmigaWifi3237 : plugs into the DB25 serial port. Provides TX/RX/RTS/CTS/DTR/DSR/DCD/RI for communication, hardware flow control, carrier detect, ring. Needs external 5V supply through micro or mini-USB. Also has LED and display header that are not implemented at the moment.

Please note that the serial port on Amiga suffers some limitations. It is dependent on CPU speed : do not expect stable transfer at more than 33600 bauds with a 7MHz 68000, even with new8n1/baudbandit serial drivers. It is also dependent on screen bitplanes so you may need to set a 4 or even 2 colours mode before transfer.

# Disclaimer
This is a hobbyist project, it comes with no warranty and no support. Also remember that the Amiga machines are about 30 years old and may fail because of such hardware expansions.

This board is not connected to the firmware authors, please don't bother them with issues you might have because of it.

I publish this work using the CC-BY-NC-SA license.

If you find it useful and want to reward me : I am always looking for Amiga/Amstrad CPC hardware to repair and hack, please contact me.

# Making it
Some components are SMD. You need to know what you are doing.

Check for shorts at least between 5V, 3.3V, and GND traces before applying power !

The programming port does not need to be soldered since it needs to be programmed just once : you can just hold it in place during the few seconds required for programming.

The ESP8266 has to be programmed with a firmware. 3232 boards need to be programmed through a RS232 serial port on your PC so you need to physically connect it to the DB9 plug (commercial or homemade adapter). 3237 board can be programmed through its RS232 DB25 or through a TTL header depending on how you build it : check the schematic. In all cases you need to connect TX of the PC to RX of the board and vice-versa.

If you use the internal version of the board, disconnect any external device from the serial port. They cannot be used at the same time.

# Using it with Zimodem
Check the Zimodem project page on how to build it with the Arduino framework.

It is required to set the pinouts before building :
```
# define DEFAULT_PIN_DSR 5  //To computer DSR
# define DEFAULT_PIN_DTR 4  //To computer DTR
# define DEFAULT_PIN_RI 2 //To computer RI
# define DEFAULT_PIN_RTS 15 //To computer CTS (warning switched)
# define DEFAULT_PIN_CTS 13 //To computer RTS (warning switched)
# define PIN_EN 12
# define PIN_SHDN 14
```

In addition for 3237 version, enable the serial converter at beginning of setup :
```
void setup()
{
#ifdef PIN_EN //Enable 3237
  pinMode(PIN_EN, OUTPUT);
  digitalWrite(PIN_EN, LOW);
#endif
#ifdef PIN_SHDN //unSHDN 3237
  pinMode(PIN_SHDN, OUTPUT);
  digitalWrite(PIN_SHDN, HIGH);
#endif
```

Setup on the Amiga :
- install some terminal software like Term_4.8
- Setup serial device with appropriate baud rate, high speed mode (8N1), appropriate flow control, NO XON/XOFF. Disable local Echo.
- Setup transfer directories, then activate zmodem auto download
- Setup Zimodem:
```
ATI
ATB38400
ATW
ATW"ssid,pwd"
AT&W
```

To connect to a telnet/bbs service :
```
ATDT"towel.blinkenlights.nl:23"
```

To transfer a file from a PC on the LAN using sz :
- On the PC : `sz -b --tcp-server Files/to/transfer Another/file/to/transfer`
- Then on the Amiga connect to your PC IP and port given by sz : `ATD"192.168.1.2:32999"`
Transfer the file to the PC :
- On the Amiga : `ATA1234`
- On the PC : `sz -b --tcp-client 192.168.1.5`

If there are too many errors and retries :
- Lower the number of colours of the terminal app or Workbench.
- Increase buffers on Amiga.
- Activate hardware flow control both on Zimodem `ATF0` and Amiga (not sure if this is meaningful though). Use `ATF4` to disable it.
- Lower bitrate both on Zimodem `ATB19200` and Amiga (not too much otherwise sz will timeout during transfer).

# Using it with esp_slip_router
Check the esp\_slip\_router page on how to build the firmware.

By default the project does not use hardware flow control. You can choose to activate it before building, which will let you use the baudbandit serial driver on the Amiga. However beware that slattach during the PC test and setup procedure will not work anymore. To enable it, make these changes in include/driver/uart.h :
```
UART_HW_RTS 1
UART_HW_CTS 1
```

To setup the Amiga side I followed the guide : https://blog.nootch.net/post/amiga-bbs-online-2019/. With few additions : enable the "ignore DSR" feature, disable "Carrier detect" and use the "New8N1" serial driver. It works on my A600 with 68020 but Genesis does not work on my A500 with 68010 (not only the license file but also starting the app).


