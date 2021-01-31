.include "macros.inc"
.section .sdata2, "a"  # 0x804565a8 - 0x804565b8

.global lbl_804565A8
lbl_804565A8:
.incbin "baserom.dol", 0x3D5408, 0x8

.global lbl_804565B0
lbl_804565B0:
.incbin "baserom.dol", 0x3D5410, 0x8

