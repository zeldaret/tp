.include "macros.inc"
.section .sdata2, "a"  # 0x80456160 - 0x80456168

.global lbl_80456160
lbl_80456160:
.incbin "baserom.dol", 0x3D4FC0, 0x8

