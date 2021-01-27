.include "macros.inc"
.section .rodata, "a"  # 0x803961b0 - 0x80396248

.global lbl_803961B0
lbl_803961B0:
.incbin "baserom.dol", 0x3931B0, 0x20

.global lbl_803961D0
lbl_803961D0:
.incbin "baserom.dol", 0x3931D0, 0x24

.global lbl_803961F4
lbl_803961F4:
.incbin "baserom.dol", 0x3931F4, 0x24

.global lbl_80396218
lbl_80396218:
.incbin "baserom.dol", 0x393218, 0x24

.global lbl_8039623C
lbl_8039623C:
.incbin "baserom.dol", 0x39323C, 0xC

