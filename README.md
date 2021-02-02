# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# LED Matrix Messaging


## Team
[Brooke](https://github.com/dutchessoflx)

## Overview
My Goal was to expand my knowledge with use of Arduino hardware with an online interface.
The Idea: To make an Arduino LED 8x8 dot-Matrix display messages sent from the internet

## Link


## Tech

- Ruby on Rails
- Skeleton CSS framework
- Custom CSS
- HTML
- Deployed on Heroku
- Arduino D1 mini-with Wifi
- Arduino 8x8 LED Matrix-Red
- MQTT protocol, a lightweight protocol for publish/subscribe messaging.
- ESPHome - Home Assistant interface- using YAML and C++

## Features

Sending Plain text messages locally to the LED Matrix
Keeping track of all previous messages

## Current Data Path
- User --> Rails Backend --> Raspberry PI-MQTT Local server --> Ardunio LED Matrix

## Future Data Path
- User -->React Front-end,on Heroku --> Rails Backend --> MQTTCloud server --> Ardunio LED Matrix

## Arduino Code
- Can be found in the text file labeled ledmatrix.yaml


### Future features:
Post to Heroku so that anyone can send messages


## Known bugs
