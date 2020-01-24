wooden-head-hsb-notifier

![Wooden head](images/whhn-05.jpeg)

Copyright ©2016 Craig Parker-Feldmann

## Description

A very simple Lua shell script, which reports whether the
Hackerspace Bremen is open or not.

## Algorithm

This shell script invokes lua, which executes a call to the operating system. That call invokes `curl` in order to query the Hackerspace Bremen website.

It processes the resulting JSON stream with the program `jshon`.

&#10087;&nbsp;&#10087;&nbsp;&#10087;
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5ODYzNzY5MzgsLTE3NTc4ODc2NzJdfQ
==
-->