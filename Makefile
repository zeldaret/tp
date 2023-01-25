WINDOWS := $(shell which wine ; echo $$?)
UNAME_S := $(shell uname -s)

#-------------------------------------------------------------------------------
# Options
#-------------------------------------------------------------------------------
DEBUG ?= 0
ifeq ($(DEBUG), 1)
	CFLAGS += -g
else
	CFLAGS +=
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

TARGET_COL := wii

TARGET := dolzel2

BUILD_PATH := build
BUILD_DIR := $(BUILD_PATH)/$(TARGET)
TARGET_ISO := $(BUILD_DIR)/dolzel2.iso

SRC_DIRS := $(shell find src/ libs/ -type f -name '*.cpp')
ASM_DIRS := $(shell find asm/ -type f -name '*.s')

# Inputs
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/main.dol
DOL_SHIFT := $(BUILD_DIR)/main_shift.dol
ELF     := $(DOL:.dol=.elf)
ELF_SHIFT     := $(DOL_SHIFT:.dol=.elf)
MAP     := $(BUILD_DIR)/dolzel2.map

# include list of object files 
include obj_files.mk

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 2.7

# Programs
ifeq ($(WINE),) #if WINE varible is unset (wine can be replaced with a less bloated translation layer such as wibo if needed)
ifeq ($(WINDOWS),1)
  WINE :=
else
  WINE := wine
endif
endif

ifeq ($(WINE_LD),) 
WINE_LD := $(WINE)
endif

# Hack for OSX
ifeq ($(UNAME_S),Darwin)
	CPP     := cpp-10 -P
	SHA1SUM := shasum -a 1
else
	CPP     := cpp -P
	SHA1SUM := sha1sum
endif

AS        := $(DEVKITPPC)/bin/powerpc-eabi-as
OBJCOPY   := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
STRIP     := $(DEVKITPPC)/bin/powerpc-eabi-strip
CC        := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc_modded.exe
DOLPHIN_LIB_CC := $(WINE) tools/mwcc_compiler/1.2.5/mwcceppc.exe
FRANK_CC  := $(WINE) tools/mwcc_compiler/1.2.5e/mwcceppc.exe
LD        := $(WINE_LD) tools/mwcc_compiler/$(MWCC_VERSION)/mwldeppc.exe
ELF2DOL   := $(BUILD_PATH)/elf2dol
PYTHON    := python3
ICONV     := iconv
DOXYGEN   := doxygen
MAKEREL   := tools/makerel.py
FRANK     := tools/frank.py
IMAGENAME := gz2e01.iso

# Options
INCLUDES := -i include -i include/dolphin/ -i src

# Assembler flags
ASFLAGS := -mgekko -I include

# Linker flags
LDFLAGS := -unused -map $(MAP) -fp hard -nodefaults -w off

# Compiler flags
CFLAGS  += -Cpp_exceptions off -proc gekko -fp hard -O3 -nodefaults -str pool,readonly,reuse -RTTI off -maxerrors 5 -enum int $(INCLUDES)

DEPFLAGS := $(if $(DISABLE_DEPS),,-MD)

# O4,p for init.c
$(BUILD_DIR)/src/init.o: CFLAGS := -Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -str pool,readonly,reuse -RTTI off -maxerrors 5 -enum int $(INCLUDES)

# __start.c needs mwcc 1.2.5 and O4,p
$(BUILD_DIR)/src/__start.o: CFLAGS := -Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -str pool,readonly,reuse -RTTI off -maxerrors 5 -enum int $(INCLUDES)
$(BUILD_DIR)/src/__start.o: MWCC_VERSION := 1.2.5
$(BUILD_DIR)/src/__start.o: CC := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe

# elf2dol needs to know these in order to calculate sbss correctly.
SDATA_PDHR := 9
SBSS_PDHR := 10

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

dol: $(DOL)
	$(SHA1SUM) -c $(TARGET).sha1

all: dirs dol
# Make sure build directory exists before compiling anything
dirs:
	@mkdir -p build
	@mkdir -p $(BUILD_DIR)

$(DOL): $(ELF) | tools
	$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)

clean:
	rm -f -d -r $(BUILD_DIR)/libs
	rm -f -d -r $(BUILD_DIR)/src
	rm -f $(ELF)
	rm -f $(DOL)
	rm -f $(ELF_SHIFT)
	rm -f $(DOL_SHIFT)
	rm -f $(BUILD_DIR)/*.a

clean_game:
	rm -r -f -d $(TARGET)/game
	rm -r -f -d $(TARGET_ISO)

clean_assets:
	rm -r -f -d game

clean_all: 
	rm -f -d -r build

clean_rels:
	rm -f -d -r $(BUILD_DIR)/rel
	rm -f $(BUILD_PATH)/*.rel

tools: $(ELF2DOL)

assets:
	@mkdir -p game
	@cd game; $(PYTHON) ../tools/extract_game_assets.py ../$(IMAGENAME)

docs:
	$(DOXYGEN) Doxyfile
	
rels: $(ELF) $(RELS)
	@echo generating RELs from .plf
	@echo $(RELS) > build/plf_files
	$(PYTHON) $(MAKEREL) build --string-table $(BUILD_DIR)/frameworkF.str @build/plf_files $(ELF)

$(ELF): $(LIBS) $(O_FILES)
	@echo $(O_FILES) > build/o_files
	@$(PYTHON) tools/lcf.py dol --output $(LDSCRIPT)
	$(LD) -application $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files $(LIBS)

$(ELF_SHIFT): $(DOL)
	@echo $(O_FILES) > build/o_files
	@$(PYTHON) tools/lcf.py dol_shift --output $(LDSCRIPT)
	$(LD) -application $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files $(LIBS)
	@cp -v $(ELF_SHIFT) $(ELF)

$(DOL_SHIFT): $(ELF_SHIFT) | tools
	$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)
	@cp -v $(DOL_SHIFT) $(DOL)
	
shift: dirs $(DOL_SHIFT)

game: shift
	$(MAKE) rels
	@mkdir -p game
	@$(PYTHON) tools/package_game_assets.py ./game $(BUILD_DIR)

iso: game
	@$(PYTHON) tools/packageISO.py $(BUILD_DIR)/game/ $(TARGET_ISO)

rungame: game
	@echo If you are playing on a shifted game make sure Hyrule Field Speed hack is disabled in dolphin!
	dolphin-emu $(BUILD_DIR)/game/sys/main.dol

#
$(BUILD_DIR)/%.o: %.c $(BUILD_DIR)/%.d
	@mkdir -p $(@D)
	@echo building... $<
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).c
	@$(CC) $(CFLAGS) $(DEPFLAGS) -c -o $(dir $@) $(basename $@).c
	@if [ -z '$(DISABLE_DEPS)' ]; then tools/transform-dep.py '$(basename $@).d' '$(basename $@).d'; touch -c $@; fi

$(BUILD_DIR)/%.o: %.cpp $(BUILD_DIR)/%.d
	@mkdir -p $(@D)
	@echo building... $<
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).cpp
	@$(CC) $(CFLAGS) $(DEPFLAGS) -c -o $(dir $@) $(basename $@).cpp
	@if [ -z '$(DISABLE_DEPS)' ]; then tools/transform-dep.py '$(basename $@).d' '$(basename $@).d'; touch -c $@; fi

ifndef DISABLE_DEPS
D_FILES := $(O_FILES:.o=.d)
$(D_FILES):
include $(wildcard $(D_FILES))
endif

# shared cpp files for RELs
$(BUILD_DIR)/rel/%.o: rel/%.cpp
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -sdata 0 -sdata2 0 -c -o $@ $<

# include library and rel makefiles
-include include_link.mk

# tools
include tools/elf2dol/Makefile

### Debug Print ###
print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

.PHONY: default all dirs clean tools docs shift game rungame iso print-%
