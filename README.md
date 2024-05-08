A couple of tools that might be useful for certain artists:

### akimbo

Poll Akimbo to find calls for artwork, calls for submissions, etc.
Calls are ordered by deadline – when everything works.
More details in [doc/akimbo.md](doc/akimbo.md).

### check_midi_keyboard

Some MIDI controllers (for example the Nektar SE49) do not have a LED or a display for transposition by semitones.
If you’ve use transposed there’s no way (unless you have absolute pitch) to know how to get back.
This small script shows you what note you’ve pressed so you can cancel any transpositions.

Requires [MIDI::ALSA](https://metacpan.org/pod/MIDI::ALSA)

### collate

Calculates the collation sequence for a book
and shows it on the screen,
so that you can do manual collation.
If you specify the number of preliminary pages
the script will use roman numerals for prelim pages
so you can check your work.

Requires [Text::Roman](https://metacpan.org/pod/Text::Roman).

### fc-list-ly

Lists all fonts available to LilyPond.
Basically it just evaluates ly:font-config-display-fonts
while making sure output is sent to standard output instead of standard error
so the result can be used in a pipe.

### rmidid

This is a very small script
to shuffle MIDI messages between two Linux boxes across a LAN using non-standard (JSON-based) UDP packets.
This could be useful if compatibility and security aren’t issues for you.

I wrote this as a proof-of-concept
because I could get neither [rtpmidid](https://github.com/davidmoreno/rtpmidid)
nor [RaveloxMIDI](https://github.com/ravelox/pimidi) to work.

On some 32-bit Raspberry Pi’s JSON::XS might crash the kernel;
JSON::PP works (I use it) but obviously this will introduce latency.

Requires [MIDI::ALSA](https://metacpan.org/pod/MIDI::ALSA),
and on 32-bit Raspberry Pi,
the [JSON](https://metacpan.org/dist/JSON) wrapper.

### yalify

Converts [Jyutping](https://en.wikipedia.org/wiki/Jyutping) spellings,
which are more well-known in Hong Kong,
into [Yale](https://en.wikipedia.org/wiki/Yale_romanization_of_Cantonese) spellings,
which I believe are probably still more well-known in North America.
I needed this for a project because I was not (and still am not) familiar with the Yale system
and Yale spellings for Cantonese are difficult to type even on Linux.
