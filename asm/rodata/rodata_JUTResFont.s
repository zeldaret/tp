.include "macros.inc"
.section .rodata, "a"  # 0x8039d390 - 0x8039d490

.global lbl_8039D390
lbl_8039D390:
.incbin "baserom.dol", 0x39A390, 0xC

.global lbl_8039D39C
lbl_8039D39C:
.incbin "baserom.dol", 0x39A39C, 0xC0

.global lbl_8039D45C
lbl_8039D45C:
.incbin "baserom.dol", 0x39A45C, 0x34

