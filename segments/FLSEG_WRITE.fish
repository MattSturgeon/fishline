#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_WRITE

	if not test -w .
		__fishline_segment $FLCLR_WRITE_BG $FLCLR_WRITE_FG
		printf "$FLSYM_WRITE_LOCK"
	end

end
