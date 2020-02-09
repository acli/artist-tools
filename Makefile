bin_targets=akimbo

install: $(addprefix $(HOME)/bin/,$(bin_targets))

$(HOME)/bin/%: %
	install -m 755 $< $@

.PHONEY: install
.DELETE_ON_ERROR:
