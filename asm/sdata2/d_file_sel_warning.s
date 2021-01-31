.include "macros.inc"
.section .sdata2, "a"  # 0x804539d8 - 0x804539f8

.global lbl_804539D8
lbl_804539D8:
.incbin "baserom.dol", 0x3D2838, 0x4

.global lbl_804539DC
lbl_804539DC:
.incbin "baserom.dol", 0x3D283C, 0x4

.global lbl_804539E0
lbl_804539E0:
.incbin "baserom.dol", 0x3D2840, 0x4

.global lbl_804539E4
lbl_804539E4:
.incbin "baserom.dol", 0x3D2844, 0x4

.global lbl_804539E8
lbl_804539E8:
.incbin "baserom.dol", 0x3D2848, 0x4

.global lbl_804539EC
lbl_804539EC:
.incbin "baserom.dol", 0x3D284C, 0x4

.global lbl_804539F0
lbl_804539F0:
.incbin "baserom.dol", 0x3D2850, 0x8

