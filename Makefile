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

BUILD_DIR := build/$(TARGET)

SRC_DIRS := $(shell find src/ libs/ -type f -name '*.cpp')
ASM_DIRS := $(shell find asm/ -type f -name '*.s')

# Inputs
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/dolzel2.map

include obj_files.mk

O_FILES := $(INIT_O_FILES) $(EXTAB_O_FILES) $(EXTABINDEX_O_FILES) $(TEXT_O_FILES) \
           $(CTORS_O_FILES) $(DTORS_O_FILES) $(RODATA_O_FILES) $(DATA_O_FILES)    \
           $(BSS_O_FILES) $(SDATA_O_FILES) $(SBSS_O_FILES) \
		   $(SDATA2_O_FILES) $(SBSS2_O_FILES)

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

AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
OBJCOPY := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
STRIP   := $(DEVKITPPC)/bin/powerpc-eabi-strip
CC      := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe
LD      := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwldeppc.exe
ELF2DOL := tools/elf2dol
PYTHON  := python3
DOXYGEN := doxygen

POSTPROC := tools/postprocess.py

# Options
INCLUDES := -i include -i include/dolphin/ -i src

# Assembler flags
ASFLAGS := -mgekko -I include

# Linker flags
LDFLAGS := -map $(MAP) -fp hard -nodefaults -w off

# Compiler flags
CFLAGS  += -Cpp_exceptions off -proc gekko -fp hard -O3 -nodefaults -msgstyle gcc -enum int $(INCLUDES)

# for postprocess.py
PROCFLAGS := -fprologue-fixup=old_stack

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

$(LDSCRIPT): ldscript.lcf
	$(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(DOL): $(ELF) | tools
	$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)
	$(SHA1SUM) -c $(TARGET).sha1

clean:
	rm -f -d -r build
	$(MAKE) -C tools clean

tools:
	$(MAKE) -C tools

docs:
	$(DOXYGEN) Doxyfile

$(ELF): $(O_FILES) $(LDSCRIPT)
	echo $(O_FILES) > build/o_files
	$(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files
# The Metrowerks linker doesn't generate physical addresses in the ELF program headers. This fixes it somehow.
#	$(OBJCOPY) $@ $@

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD_DIR)/%.o: %.cpp
	$(CC) $(CFLAGS) -c -o $@ $<
	# TODO: See if this is necessary after actually adding some C code
	# $(PYTHON) $(POSTPROC) $(PROCFLAGS) $@

### Debug Print ###

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

.PHONY: default all dirs clean tools docs print-%
