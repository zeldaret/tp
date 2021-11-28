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
ELF     := $(DOL:.dol=.elf)
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
CC        := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe
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

all: dirs $(DOL)

ALL_DIRS := build $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

# Make sure build directory exists before compiling anything
dirs:
	$(shell mkdir -p $(ALL_DIRS))

$(DOL): $(ELF) | tools
	$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)
	$(SHA1SUM) -c $(TARGET).sha1

clean:
	rm -f -d -r build

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

.PHONY: default all dirs clean tools docs print-%
