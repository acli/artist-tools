rmidid uses JSON in UDP packets to shuffle MIDI messages between two Linux computers.
The sender encapsulates the return value of MIDI::ALSA::input
(for example from a MIDI controller) in JSON format,
sends it through UDP to the recipient,
and the recipient decodes it
and sends it through MIDI::ALSA::output to some MIDI device
(perhaps a soft synth).

The UDP packet is hard-coded to have a maximum size of 1024 octets,
but real MIDI messages are not likely to exceed this limit.

Everything from MIDI::ALSA::input is sent, including source and destination.
However, on reception, if the MIDI message came from a UDP packet,
the recipient will replace source and destination with its own client number and port
and the target client number and port specified on the command line.
