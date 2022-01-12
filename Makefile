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
ifeq ($(WINDOWS),1)
  WINE :=
else
  WINE := wine
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
CC        := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc_patched.exe
LD        := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwldeppc.exe
ELF2DOL   := $(BUILD_PATH)/elf2dol
PYTHON    := python3
ICONV     := iconv
DOXYGEN   := doxygen
MAKEREL   := tools/makerel.py
IMAGENAME := gz2e01.iso

# Options
INCLUDES := -i include -i include/dolphin/ -i src

# Assembler flags
ASFLAGS := -mgekko -I include

# Linker flags
LDFLAGS := -unused -map $(MAP) -fp hard -nodefaults -w off

# Compiler flags
CFLAGS  += -Cpp_exceptions off -proc gekko -fp hard -O3 -nodefaults -msgstyle gcc -str pool,readonly,reuse -RTTI off -maxerrors 5 -enum int $(INCLUDES)

# elf2dol needs to know these in order to calculate sbss correctly.
SDATA_PDHR := 9
SBSS_PDHR := 10

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

check:
	$(SHA1SUM) -c $(TARGET).sha1

all: dirs $(DOL) check

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
	rm -f $(BUILD_DIR)/*.a

clean_all: 
	rm -f -d -r build

clean_rels:
	rm -f -d -r $(BUILD_DIR)/rel
	rm -f $(BUILD_PATH)/*.rel

tools: $(ELF2DOL)

assets:
	@cd game; $(PYTHON) ../tools/extract_game_assets.py ../$(IMAGENAME)

docs:
	$(DOXYGEN) Doxyfile
	
rels: $(ELF) $(RELS)
	@echo generating RELs from .plf
	@$(PYTHON) $(MAKEREL) build --string-table $(BUILD_DIR)/frameworkF.str $(RELS) $(ELF)

$(ELF): $(LIBS) $(O_FILES)
	@echo $(O_FILES) > build/o_files
	@$(PYTHON) tools/lcf.py dol --output $(LDSCRIPT)
	$(LD) -application $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files $(LIBS)

$(ELF_SHIFT): $(LIBS) $(O_FILES)
	@echo $(O_FILES) > build/o_files
	@$(PYTHON) tools/lcf.py dol --shift --output $(LDSCRIPT)
	$(LD) -application $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files $(LIBS)

$(DOL_SHIFT): $(ELF_SHIFT) | tools
	$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)

shift: dirs $(DOL_SHIFT)

#
$(BUILD_DIR)/%.o: %.cpp
	@mkdir -p $(@D)
	@echo building... $<
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).cpp
	@$(CC) $(CFLAGS) -c -o $@ $(basename $@).cpp

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

.PHONY: default all dirs clean tools docs shift print-%
