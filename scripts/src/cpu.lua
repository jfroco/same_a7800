-- license:BSD-3-Clause
-- copyright-holders:MAMEdev Team

---------------------------------------------------------------------------
--
--   cpu.lua
--
--   Rules for building CPU cores
--
---------------------------------------------------------------------------

--------------------------------------------------
-- Dynamic recompiler objects
--------------------------------------------------

DRC_CPUS = { "E1", "SH", "MIPS3", "POWERPC", "ARM7", "ADSP21062", "MB86235", "DSP16", "UNSP" }
CPU_INCLUDE_DRC = false
for i, v in ipairs(DRC_CPUS) do
	if (CPUS[v]~=null) then
		CPU_INCLUDE_DRC = true
		break
	end
end
CPU_INCLUDE_DRC_NATIVE = CPU_INCLUDE_DRC and (not _OPTIONS["FORCE_DRC_C_BACKEND"]) and ((_OPTIONS["PLATFORM"] == "x86") or (_OPTIONS["PLATFORM"] == "arm64"))


if CPU_INCLUDE_DRC then
	files {
		MAME_DIR .. "src/devices/cpu/drcbec.cpp",
		MAME_DIR .. "src/devices/cpu/drcbec.h",
		MAME_DIR .. "src/devices/cpu/drcbeut.cpp",
		MAME_DIR .. "src/devices/cpu/drcbeut.h",
		MAME_DIR .. "src/devices/cpu/drccache.cpp",
		MAME_DIR .. "src/devices/cpu/drccache.h",
		MAME_DIR .. "src/devices/cpu/drcfe.cpp",
		MAME_DIR .. "src/devices/cpu/drcfe.h",
		MAME_DIR .. "src/devices/cpu/drcuml.cpp",
		MAME_DIR .. "src/devices/cpu/drcuml.h",
		MAME_DIR .. "src/devices/cpu/uml.cpp",
		MAME_DIR .. "src/devices/cpu/uml.h",
		MAME_DIR .. "src/devices/cpu/x86log.cpp",
		MAME_DIR .. "src/devices/cpu/x86log.h",
		MAME_DIR .. "src/devices/cpu/drcumlsh.h",
	}
end
if CPU_INCLUDE_DRC_NATIVE then
	files {
		MAME_DIR .. "src/devices/cpu/drcbearm64.cpp",
		MAME_DIR .. "src/devices/cpu/drcbearm64.h",
		MAME_DIR .. "src/devices/cpu/drcbex64.cpp",
		MAME_DIR .. "src/devices/cpu/drcbex64.h",
		MAME_DIR .. "src/devices/cpu/drcbex86.cpp",
		MAME_DIR .. "src/devices/cpu/drcbex86.h",
	}
end


--------------------------------------------------
-- MOS Technology 6502 and its many derivatives
--@src/devices/cpu/m6502/deco16.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/g65sc02.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/gew7.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/gew12.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m3745x.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m37640.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m4510.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m50734.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m5074x.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m6500_1.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m6502.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m6503.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m6504.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m6507.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m6509.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m6510.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m6510t.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m65ce02.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m740.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m7501.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/m8502.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/r65c02.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/r65c19.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/rp2a03.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/st2xxx.h,CPUS["ST2XXX"] = true
--@src/devices/cpu/m6502/st2204.h,CPUS["ST2XXX"] = true
--@src/devices/cpu/m6502/st2205u.h,CPUS["ST2XXX"] = true
--@src/devices/cpu/m6502/vt3xx_spu.h,CPUS["VT3XX_SPU"] = true
--@src/devices/cpu/m6502/w65c02.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/w65c02s.h,CPUS["M6502"] = true
--@src/devices/cpu/m6502/xavix.h,CPUS["XAVIX"] = true
--@src/devices/cpu/m6502/xavix.h,CPUS["XAVIX2000"] = true

--------------------------------------------------

if CPUS["M6502"] then
	files {

		MAME_DIR .. "src/devices/cpu/m6502/m6502.cpp",
		MAME_DIR .. "src/devices/cpu/m6502/m6502.h",
		MAME_DIR .. "src/devices/cpu/m6502/m6502mcu.h",
		MAME_DIR .. "src/devices/cpu/m6502/m6502mcu.ipp",
		
	}

	custombuildtask {
		{ MAME_DIR .. "src/devices/cpu/m6502/om6502.lst",   GEN_DIR .. "emu/cpu/m6502/m6502.hxx",   { MAME_DIR .. "src/devices/cpu/m6502/m6502make.py",   MAME_DIR  .. "src/devices/cpu/m6502/dm6502.lst"   }, {"@echo Generating m6502 instruction source file...", PYTHON .. " $(1) s m6502 $(<) $(2) $(@)" }},
	}

	dependency {
		{ MAME_DIR .. "src/devices/cpu/m6502/m6502.cpp",    GEN_DIR .. "emu/cpu/m6502/m6502.hxx" },
	}
end

if opt_tool(CPUS, "M6502") then
	table.insert(disasm_custombuildtask, { MAME_DIR .. "src/devices/cpu/m6502/om6502.lst",   GEN_DIR .. "emu/cpu/m6502/m6502d.hxx",   { MAME_DIR .. "src/devices/cpu/m6502/m6502make.py",   MAME_DIR  .. "src/devices/cpu/m6502/dm6502.lst"   }, {"@echo Generating m6502 disassembler source file...", PYTHON .. " $(1) d m6502 $(<) $(2) $(@)" }})
	table.insert(disasm_dependency, { MAME_DIR .. "src/devices/cpu/m6502/m6502d.cpp",    GEN_DIR .. "emu/cpu/m6502/m6502d.hxx" })
	table.insert(disasm_files, MAME_DIR .. "src/devices/cpu/m6502/m6502d.cpp")
	table.insert(disasm_files, MAME_DIR .. "src/devices/cpu/m6502/m6502d.h")
end