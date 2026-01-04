-- license:BSD-3-Clause
-- copyright-holders:MAMEdev Team

---------------------------------------------------------------------------
--
--   bus.lua
--
--   Rules for building bus cores
--
---------------------------------------------------------------------------

-------------------------------------------------
--
--@src/devices/bus/a7800/a78_slot.h,BUSES["A7800"] = true
---------------------------------------------------

if (BUSES["A7800"]~=null) then
	files {
		MAME_DIR .. "src/devices/bus/a7800/a78_slot.cpp",
		MAME_DIR .. "src/devices/bus/a7800/a78_slot.h",
		MAME_DIR .. "src/devices/bus/a7800/a78_carts.h",
		MAME_DIR .. "src/devices/bus/a7800/rom.cpp",
		MAME_DIR .. "src/devices/bus/a7800/rom.h",
		MAME_DIR .. "src/devices/bus/a7800/hiscore.cpp",
		MAME_DIR .. "src/devices/bus/a7800/hiscore.h",
		MAME_DIR .. "src/devices/bus/a7800/xboard.cpp",
		MAME_DIR .. "src/devices/bus/a7800/xboard.h",
		MAME_DIR .. "src/devices/bus/a7800/cpuwiz.cpp",
		MAME_DIR .. "src/devices/bus/a7800/cpuwiz.h",
		MAME_DIR .. "src/devices/sound/ymopm.cpp",
		MAME_DIR .. "src/devices/sound/ymopm.h",
		MAME_DIR .. "src/devices/sound/pokey.cpp",
		MAME_DIR .. "src/devices/sound/pokey.h",
	}
end

