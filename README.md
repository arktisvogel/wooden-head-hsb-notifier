# wooden-head-hsb-notifier

A very simple BASH shell script, which reports whether the Hackerspace Bremen hackerspace is open or not.

## Algorithm

This shell script invokes ``curl`` in order to query the Hackerspace Bremen database.

It processes the JSON stream with the program ``jshon``.

Finally, it invokes AWK to only write those lines which contain the string: ``"open"``
