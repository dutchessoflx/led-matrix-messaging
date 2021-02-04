# README
#Links
https://dutchessoflx.github.io/react-led-matrix-messaging/

## Team
[Brooke](https://github.com/dutchessoflx)

## Overview
My Goal was to expand my knowledge with use of Arduino hardware with an online interface.
The Idea: To make an Arduino LED 8x8 dot-Matrix display messages sent from the internet


## Tech

- Ruby on Rails
- Skeleton CSS framework
- React BumBag
- Custom CSS
- HTML
- Deployed on GitHub Pages with use of Ngrok Tunneling
- Arduino D1 mini-with Wifi
- Arduino 8x8 LED Matrix-Red
- Breadboard, cabling, power cable USB
- MQTT protocol, a lightweight protocol for publish/subscribe messaging.
- ESPHome - Home Assistant interface- using YAML and C++
- FontStruct - A Website that helps you make your own custom fonts (for the Matrix screens)

## Features
Displaying the Time when no messages are present
Sending Plain text messages locally to the LED Matrix
Keeping track of all previous messages

## Current Data Path
- User --> Rails Backend(Ngrok) --> Raspberry PI-MQTT Local server --> Ardunio LED Matrix

## Future Data Path
- User -->React Front-end(Heroku) --> Rails Backend --> MQTTCloud server --> Ardunio LED Matrix

## Arduino Code
- Can be found in the text file labeled ledmatrix.yaml


### Future features:
- Post to Heroku so that anyone can send messages at any time
- Add Buzzer or other "alarm clock" features
- command on front-end to alter brightness
- upgrade to RGB Screens instead of the current RED LED Matrix

## Known bugs
- If system times out clock loses current time and resets to default(current fix to resend yaml code)
- sizing lowercase font is currently too big
- not all symbols can be shown in font
- blank messages can be sent and received
