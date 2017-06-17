#! /usr/bin/lua
-- This shell script executes a system call (executes curl, piped to jshon), which will fetch a JSON stream from the Hackerspace Bremen website.
--
os.execute "curl  -s https://hackerspacehb.appspot.com/v2/status | jshon"
--
-- EOF
