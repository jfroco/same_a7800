-- license:BSD-3-Clause
-- copyright-holders:MAMEdev Team

---------------------------------------------------------------------------
--
--   machine.lua
--
--   Rules for building machine cores
--
----------------------------------------------------------------------------

files {
	MAME_DIR .. "src/devices/machine/bcreader.cpp",
	MAME_DIR .. "src/devices/machine/bcreader.h",
	MAME_DIR .. "src/devices/machine/buffer.cpp",
	MAME_DIR .. "src/devices/machine/buffer.h",
	MAME_DIR .. "src/devices/machine/clock.cpp",
	MAME_DIR .. "src/devices/machine/clock.h",
	MAME_DIR .. "src/devices/machine/keyboard.cpp",
	MAME_DIR .. "src/devices/machine/keyboard.h",
	MAME_DIR .. "src/devices/machine/keyboard.ipp",
	-- MAME_DIR .. "src/devices/machine/laserdsc.cpp",
	-- MAME_DIR .. "src/devices/machine/laserdsc.h",
	MAME_DIR .. "src/devices/machine/nvram.cpp",
	MAME_DIR .. "src/devices/machine/nvram.h",
	MAME_DIR .. "src/devices/machine/ram.cpp",
	MAME_DIR .. "src/devices/machine/ram.h",
	-- MAME_DIR .. "src/devices/machine/legscsi.cpp",
	-- MAME_DIR .. "src/devices/machine/legscsi.h",
	MAME_DIR .. "src/devices/machine/sdlc.cpp",
	MAME_DIR .. "src/devices/machine/sdlc.h",
	MAME_DIR .. "src/devices/machine/terminal.cpp",
	MAME_DIR .. "src/devices/machine/terminal.h",
	MAME_DIR .. "src/devices/machine/timer.cpp",
	MAME_DIR .. "src/devices/machine/timer.h",
}
files {
	MAME_DIR .. "src/devices/imagedev/bitbngr.cpp",
	MAME_DIR .. "src/devices/imagedev/bitbngr.h",
	MAME_DIR .. "src/devices/imagedev/cartrom.cpp",
	MAME_DIR .. "src/devices/imagedev/cartrom.h",
	MAME_DIR .. "src/devices/imagedev/cassette.cpp",
	MAME_DIR .. "src/devices/imagedev/cassette.h",
	MAME_DIR .. "src/devices/imagedev/cdromimg.cpp",
	MAME_DIR .. "src/devices/imagedev/cdromimg.h",
	MAME_DIR .. "src/devices/imagedev/diablo.cpp",
	MAME_DIR .. "src/devices/imagedev/diablo.h",
	MAME_DIR .. "src/devices/imagedev/flopdrv.cpp",
	MAME_DIR .. "src/devices/imagedev/flopdrv.h",
	MAME_DIR .. "src/devices/imagedev/floppy.cpp",
	MAME_DIR .. "src/devices/imagedev/floppy.h",
	MAME_DIR .. "src/devices/imagedev/harddriv.cpp",
	MAME_DIR .. "src/devices/imagedev/harddriv.h",
	MAME_DIR .. "src/devices/imagedev/magtape.cpp",
	MAME_DIR .. "src/devices/imagedev/magtape.h",
	MAME_DIR .. "src/devices/imagedev/memcard.cpp",
	MAME_DIR .. "src/devices/imagedev/memcard.h",
	MAME_DIR .. "src/devices/imagedev/mfmhd.cpp",
	MAME_DIR .. "src/devices/imagedev/mfmhd.h",
	MAME_DIR .. "src/devices/imagedev/microdrv.cpp",
	MAME_DIR .. "src/devices/imagedev/microdrv.h",
	MAME_DIR .. "src/devices/imagedev/midiin.cpp",
	MAME_DIR .. "src/devices/imagedev/midiin.h",
	MAME_DIR .. "src/devices/imagedev/midiout.cpp",
	MAME_DIR .. "src/devices/imagedev/midiout.h",
	MAME_DIR .. "src/devices/imagedev/papertape.cpp",
	MAME_DIR .. "src/devices/imagedev/papertape.h",
	MAME_DIR .. "src/devices/imagedev/picture.cpp",
	MAME_DIR .. "src/devices/imagedev/picture.h",
	MAME_DIR .. "src/devices/imagedev/printer.cpp",
	MAME_DIR .. "src/devices/imagedev/printer.h",
	MAME_DIR .. "src/devices/imagedev/simh_tape_image.cpp",
	MAME_DIR .. "src/devices/imagedev/simh_tape_image.h",
	MAME_DIR .. "src/devices/imagedev/snapquik.cpp",
	MAME_DIR .. "src/devices/imagedev/snapquik.h",
	MAME_DIR .. "src/devices/imagedev/wafadrive.cpp",
	MAME_DIR .. "src/devices/imagedev/wafadrive.h",
	MAME_DIR .. "src/devices/imagedev/avivideo.cpp",
	MAME_DIR .. "src/devices/imagedev/avivideo.h",
}



---------------------------------------------------
--
--@src/devices/machine/mos6530.h,MACHINES["MOS6530"] = true
---------------------------------------------------

if (MACHINES["MOS6530"]~=null) then
	files {
		MAME_DIR .. "src/devices/machine/mos6530.cpp",
		MAME_DIR .. "src/devices/machine/mos6530.h",
	}
end

