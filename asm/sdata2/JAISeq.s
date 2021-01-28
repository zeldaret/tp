.include "macros.inc"
.section .sdata2, "a"  # 0x80455798 - 0x804557a8

.global lbl_80455798
lbl_80455798:
.incbin "baserom.dol", 0x3D45F8, 0x4

.global lbl_8045579C
lbl_8045579C:
.incbin "baserom.dol", 0x3D45FC, 0x4

.global lbl_804557A0
lbl_804557A0:
.incbin "baserom.dol", 0x3D4600, 0x8

