.include "macros.inc"
.section .sdata2, "a"  # 0x804561b0 - 0x804561c0

.global lbl_804561B0
lbl_804561B0:
.incbin "baserom.dol", 0x3D5010, 0x4

.global lbl_804561B4
lbl_804561B4:
.incbin "baserom.dol", 0x3D5014, 0x4

.global lbl_804561B8
lbl_804561B8:
.incbin "baserom.dol", 0x3D5018, 0x8

