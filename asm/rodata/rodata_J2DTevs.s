.include "macros.inc"
.section .rodata, "a"  # 0x803a1b80 - 0x803a1c00

.global lbl_803A1B80
lbl_803A1B80:
.incbin "baserom.dol", 0x39EB80, 0x20

.global lbl_803A1BA0
lbl_803A1BA0:
.incbin "baserom.dol", 0x39EBA0, 0x24

.global lbl_803A1BC4
lbl_803A1BC4:
.incbin "baserom.dol", 0x39EBC4, 0x1C

.global lbl_803A1BE0
lbl_803A1BE0:
.incbin "baserom.dol", 0x39EBE0, 0x14

.global lbl_803A1BF4
lbl_803A1BF4:
.incbin "baserom.dol", 0x39EBF4, 0xC

