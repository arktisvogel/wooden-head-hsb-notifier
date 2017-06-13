wooden-head-hsb-notifier
========================

[Wooden head]

Copyright ©2016 Craig Parker-Feldmann

Description
-----------

A very simple BASH shell script, which reports whether the Hackerspace
Bremen is open or not.

Algorithm
---------

This shell script invokes curl in order to query the Hackerspace Bremen
website.

It processes the resulting JSON stream with the program jshon. Next, it
invokes tr in order to convert all curly-brace (open) characters into
newline characters. Finally, it invokes grep in order to display any
line which matches the pattern “/ST3/”.

