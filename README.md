# rpn_ui

Web UI that accesses the ```rpn_service``` service. 

## About

This is part of a toy project to explore various ways to package and deploy applications. It is a Reverse Polish Notation calculator.

Tested on:

* Google Chrome, Ubuntu Linux 16.04
* Google Chrome, Ubuntu Linux 16.10

## Local setup

The project uses
* cucumber
* capybara
* selenium-webdriver
* phantomjs
* chromedriver
* bundler
* rake
* Xvfb

The project contains a bash script named ```setup``` that can ensure your development environment has these dependencies installed, assuming you're running a Debian flavor of Linux. The script checks whether chromedriver, phantomjs, Xvfb, and bundler are found on the PATH, and selectively installs the ones it doesn't find. 

```shell
./setup
```

To install Ruby-specific dependencies, run ```bundler```.


```shell
bundle install
```

You can use the convenience script ```start_xvfb``` to start Xvfb on display 99:

```shell
./start_xvfb
```

## Start local rpn_service

Clone project ```rpn_service``` and start the local test server. 

## Run cukes

To run ```rake``` with output formatted as an html document:

```shell
rake
```

To run ```rake``` displaying output on the console:

```shell
rake interactive
```

To run the cukes headless:

```shell
HEADLESS=true rake
```

or

```shell
HEADLESS=true rake interactive
```
