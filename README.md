This is a script to poll Akimbo (a site used by Canadian artists) to display
a list of calls for submissions, together with their indicated deadlines.
The calls are sorted by deadline,
so the most urgent calls listed first.

This script was written mainly because it’s very difficult to figure out what the deadlines using Akimbo’s interface.
It is also impossible to filter out listings that are past their deadlines using their UI.

What is treated as a call?
=========================

Akimbo has an option to list only calls for submissions.
In theory we can poll this list. 
Unfortunately, in reality some calls are listed under other “types” such as learning experiences (especially residencies) or just events.
As a result the script just polls the RSS feed, which contains all types of events.

To reduce the amount of noise,
all listings without a deadline (defined as text marked up with a class of text-deadline)
are assumed to be non-calls and removed from the display.

Impact on server load
=====================

The script is designed to be *very* gentle on the Akimbo server.
It should load the server even less than an ordinary graphical web browser
since only the text is loaded, not any graphics, style sheets or scripts.

Only one page of the listing is loaded (it will not click Next)
and the listing is loaded only every hour.
(It caches the listings page and will not load a new copy until an hour has passed.)

Details of the calls (including deadlines)
require loading individual posts
(just like we have to control-click each post to open individual posts on a graphical web browser),
but these loads are always accompanied by a delay to further reduce server load.
Posts are cached so every post will only be loaded once unless their URL changes.

Bugs
====

Time zone “support” is entirely wrong.
In particular, not all zones are recognized,
the user is assumed to be in the Eastern time zone,
and the script doesn’t know how to deal with the Atlantic time zone.

Dependencies
============

- *file*(1)
- *wget*(1)
- *zcat*(1) (from *gzip*)

