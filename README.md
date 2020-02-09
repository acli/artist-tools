This is a script to poll the art site “Akimbo” to display
a list of calls for submissions, together with their indicated deadlines.

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
which are always accompanied by a delay to further reduce server load.
Posts are cached so every post will only be loaded once unless their URL changes.

Dependencies
============

- *file*(1)
- *wget*(1)
- *zcat*(1) (from *gzip*)
