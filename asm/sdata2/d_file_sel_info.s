.include "macros.inc"
.section .sdata2, "a"  # 0x804539f8 - 0x80453a00

.global lbl_804539F8
lbl_804539F8:
.incbin "baserom.dol", 0x3D2858, 0x4

.global lbl_804539FC
lbl_804539FC:
.incbin "baserom.dol", 0x3D285C, 0x4

