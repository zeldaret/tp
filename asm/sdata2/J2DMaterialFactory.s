.include "macros.inc"
.section .sdata2, "a"  # 0x804561c0 - 0x804561c8

.global lbl_804561C0
lbl_804561C0:
.incbin "baserom.dol", 0x3D5020, 0x4

.global lbl_804561C4
lbl_804561C4:
.incbin "baserom.dol", 0x3D5024, 0x4

