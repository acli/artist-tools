bin_targets=akimbo check_midi_keyboard collate fc-list-ly yalify

install: $(addprefix $(HOME)/bin/,$(bin_targets))

$(HOME)/bin/%: %
	perl -cw $< && install -m 755 $< $@

.PHONEY: install
.DELETE_ON_ERROR:
