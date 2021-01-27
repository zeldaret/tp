.include "macros.inc"
.section .sdata2, "a"  # 0x804557a8 - 0x804557b8

.global lbl_804557A8
lbl_804557A8:
.incbin "baserom.dol", 0x3D4608, 0x4

.global lbl_804557AC
lbl_804557AC:
.incbin "baserom.dol", 0x3D460C, 0x4

.global lbl_804557B0
lbl_804557B0:
.incbin "baserom.dol", 0x3D4610, 0x8

