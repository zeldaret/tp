.include "macros.inc"
.section .sdata2, "a"  # 0x804551e0 - 0x80455208

.global lbl_804551E0
lbl_804551E0:
.incbin "baserom.dol", 0x3D4040, 0x8

.global lbl_804551E8
lbl_804551E8:
.incbin "baserom.dol", 0x3D4048, 0x8

.global lbl_804551F0
lbl_804551F0:
.incbin "baserom.dol", 0x3D4050, 0x8

.global lbl_804551F8
lbl_804551F8:
.incbin "baserom.dol", 0x3D4058, 0x8

.global lbl_80455200
lbl_80455200:
.incbin "baserom.dol", 0x3D4060, 0x8

