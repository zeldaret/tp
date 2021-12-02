ELF2DOL_CC := cc
ELF2DOL_CFLAGS := -O3 -Wall -s

$(ELF2DOL): include tools/elf2dol/Makefile
	@echo [tools] building elf2dol 
	@$(ELF2DOL_CC) $(ELF2DOL_CFLAGS) -o $(ELF2DOL) tools/elf2dol/elf2dol.c

