.include "macros.inc"
.section .rodata, "a"  # 0x803a2340 - 0x803a2370

.global lbl_803A2340
lbl_803A2340:
.incbin "baserom.dol", 0x39F340, 0x10

.global lbl_803A2350
lbl_803A2350:
.incbin "baserom.dol", 0x39F350, 0x10

.global lbl_803A2360
lbl_803A2360:
.incbin "baserom.dol", 0x39F360, 0x10

