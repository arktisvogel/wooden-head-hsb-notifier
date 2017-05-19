![Wooden head](./images/whhn-03.jpg)
# wooden-head-hsb-notifier

Copyright ©2016 Craig Parker-Feldmann

## Description

A very simple BASH shell script, which reports whether the
Hackerspace Bremen is open or not.

## Algorithm

This shell script invokes ``curl`` in order to query the
Hackerspace Bremen website.

It processes the resulting JSON stream with the
program ``jshon``.

Finally, it displays those lines which contain the
string: ``open``

<!-- Local Variables: -->
<!-- mode: markdown -->
<!-- tab-width: 4 -->
<!-- End: -->

<!-- EOF -->
