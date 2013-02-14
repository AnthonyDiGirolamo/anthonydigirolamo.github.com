---
layout: post
title: "Lights Out Box"
date: 2013-02-13 14:46
comments: true
categories: arduino
---

Over the past year I've been working on my first big arduino project. It started
as an experiment in powering and controlling led displays. I love the blinky
lights and wanted something big that would catch the eye.

The end result is a tabletop sized arcade for a 4x4 lights out game similar in
gameplay to the
[Mini Lights out Game](http://www.jaapsch.net/puzzles/lights.htm#descmini)
by Tiger Electronics.

<!-- more -->

This project took me a long while to complete due to lack of free time. I began
when my son turned one year old and finished when he was two. The effort paid
off though and I'm happy with how it turned out. It's a bit overkill and I'm
sure it could be accomplished cheaper and more efficiently. Even so, it has a
lot of character and thats good for me.

### Demo


### Parts

I took the lego approach to putting this together. Pick powerful components and
wire them up. Here is a list of every part used and what I paid for it.

* [Pololu Step-Down Voltage Regulator D15V35F5S3](http://www.pololu.com/catalog/product/2110) $14.95
* [ATMEGA328P](https://www.adafruit.com/products/123) $2.85
* 16x [0.8 inch Alphanumeric Displays](http://shop.evilmadscientist.com/productsmenu/partsmenu/232) $26.40
* 2x [MAX6954 4-Wire Interfaced, 2.7V to 5.5V LED Display Driver with I/O Expander and Key Scan](http://www.maximintegrated.com/datasheet/index.mvp/id/3410) Free - requested free samples
* [12mm Diffused Thin Digital RGB LED Pixels (Strand of 25) - WS2801](https://www.adafruit.com/products/322) $39.95
* [MCP23017 - i2c 16 input/output port expander](https://www.adafruit.com/products/732) $2.95
* 16x [Arcade Button - 30mm Translucent Clear](https://www.adafruit.com/products/471) $42.56
* [Waterproof Metal On/Off Switch with Green LED Ring](http://adafruit.com/products/482) $5.95
* [10x30ft of kynar wire](http://www.ebay.com/itm/10-X-30-ft-Kynar-30-awg-wire-10-Color-4-xbox-v-game-/260623604297) $21.90
* [Wire wrap sockets](http://www.king-cart.com/phoenixent/product=SOCKETS+WIRE+WRAP+DIP+%2526+SIP/exact_match=exact) Parts HWS3089, HWS15765, HWS1462 $34.18
* 2x [4xAA Battery Holder](http://shop.evilmadscientist.com/productsmenu/partsmenu/422) $4.50
* [6-32 x 3/8 inch Button Socket Cap Head Screw](http://shop.evilmadscientist.com/productsmenu/partsmenu/468-632bscs) $6.46
* [Right Angle Mounting Bracket](http://shop.evilmadscientist.com/productsmenu/partsmenu/465-bracket) $10.20
* [Premium Female/Female Jumper Wires - 40 x 6"](https://www.adafruit.com/products/266) $6.95
* [Clear Acrylic from Ponoko](http://www.ponoko.com/make-and-sell/show-material/72-acrylic-clear) $32.96
* [5/64 inch Balldriver](http://shop.evilmadscientist.com/productsmenu/partsmenu/202) $2.50
* [FTDI Friend + extras - v1.0](https://www.adafruit.com/products/284) $14.95
* [Wire-Wrapping Tool](http://www.radioshack.com/product/index.jsp?productId=2103243) $6.99
* Various resistors and capacitors mostly 0.1µF ones about $5.00

### Build

I chose to wire wrap the whole thing because I wasn't 100% sure how to connect
everything to start with. I'm also lacking a proper circuit schematic. Learing
how to use Eagle or gEDA is still on my todo list.

### Solving a Game

A [post on Merlin's magic square](http://www.cut-the-knot.org/Curriculum/Games/Merlin4x4.shtml#theory)
at cut-the-knot.org pointed me to an article in Mathematics Magazine, Vol. 74
[An Easy Solution to Mini Lights Out(pp. 57-59) Jennie Missigman and Richard Weida](http://www.jstor.org/stable/2691157)
The gist of this article points out a few unique properties of 4x4 lights out games that are periodic (wrap around).

1. Every game is solvable
2. The order of buttons pressed does not matter
3. The solution to any game can be found by multiplying a matrix by a column
   vector that represents the status of the board. 1's represent lights turned
   on, 0's off.

Armed with this knowledge I was able to add random levels (which are all
solvable), a solution function, and the total number of moves required to win.

Unfortunately, it turns out that random levels are extremely hard to win because
they have absolutely no pattern that makes sense. To address that I wanted to
include the original levels that were part of the
[Mini Lights out Game](http://www.jaapsch.net/puzzles/lights.htm#descmini).
You can find them at
[Mini Lights Out Levels and Solutions](http://www.jaapsch.net/puzzles/extra/lomini.txt) on
[Jaap's Puzzle Page](http://www.jaapsch.net/puzzles/lightsol.htm#lomini).

### Code

The code is pretty well organized for an arduino sketch. I've written a library
for controlling the MAX6954's. The lights out and color chooser functions are
broken out into their own classes.

### Improvements:

* Design a circuit board instead of wire wrapping
* Tab-in-slot method enclosure
* Better arcade buttons with a more clicky feel
* Better way of fastening the RGB LEDs to the buttons
* A red contrast filter for the 17 segment characters

