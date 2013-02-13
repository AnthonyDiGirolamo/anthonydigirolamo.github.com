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
off though and I'm happy with how it turned out.

### Demo

### Gameplay

### Components

### Computing Solutions

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


### Hypothetical Version 2.0 Improvements:

* Design a circuit board instead of wire wrapping
* Tab-in-slot method enclosure

