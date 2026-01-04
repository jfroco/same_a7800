-- license:BSD-3-Clause
-- copyright-holders:MAMEdev Team

---------------------------------------------------------------------------
--
--   sound.lua
--
--   Rules for building sound cores
--
----------------------------------------------------------------------------

files {
	MAME_DIR .. "src/devices/sound/bbd.cpp",
	MAME_DIR .. "src/devices/sound/bbd.h",
	MAME_DIR .. "src/devices/sound/flt_biquad.cpp",
	MAME_DIR .. "src/devices/sound/flt_biquad.h",
	MAME_DIR .. "src/devices/sound/flt_vol.cpp",
	MAME_DIR .. "src/devices/sound/flt_vol.h",
	MAME_DIR .. "src/devices/sound/flt_rc.cpp",
	MAME_DIR .. "src/devices/sound/flt_rc.h",
	MAME_DIR .. "src/devices/sound/mixer.cpp",
	MAME_DIR .. "src/devices/sound/mixer.h",
	MAME_DIR .. "src/devices/sound/samples.cpp",
	MAME_DIR .. "src/devices/sound/samples.h",
}


---------------------------------------------------
-- Atari custom sound chips
--@src/devices/sound/pokey.h,SOUNDS["POKEY"] = true
--@src/devices/sound/tiaintf.h,SOUNDS["TIA"] = true
-- Yamaha FM synthesizers
--@src/devices/sound/ymopm.h,SOUNDS["YM2151"] = true
---------------------------------------------------

if (SOUNDS["POKEY"]~=null) then
	files {
		MAME_DIR .. "src/devices/sound/pokey.cpp",
		MAME_DIR .. "src/devices/sound/pokey.h",
	}
end

if (SOUNDS["TIA"]~=null) then
	files {
		MAME_DIR .. "src/devices/sound/tiasound.cpp",
		MAME_DIR .. "src/devices/sound/tiasound.h",
		MAME_DIR .. "src/devices/sound/tiaintf.cpp",
		MAME_DIR .. "src/devices/sound/tiaintf.h",
	}
end


if (SOUNDS["YM2151"]~=null or SOUNDS["YM2164"]~=null) then
	files {
		MAME_DIR .. "src/devices/sound/ymopm.cpp",
		MAME_DIR .. "src/devices/sound/ymopm.h",
	}
end
