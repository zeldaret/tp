.include "macros.inc"
.section .rodata, "a"  # 0x803a2380 - 0x803a23b0

.global lbl_803A2380
lbl_803A2380:
.incbin "baserom.dol", 0x39F380, 0x10

.global lbl_803A2390
lbl_803A2390:
.incbin "baserom.dol", 0x39F390, 0x10

.global lbl_803A23A0
lbl_803A23A0:
.incbin "baserom.dol", 0x39F3A0, 0x10

