.include "macros.inc"
.section .sdata2, "a"  # 0x80455788 - 0x80455798

.global lbl_80455788
lbl_80455788:
.incbin "baserom.dol", 0x3D45E8, 0x4

.global lbl_8045578C
lbl_8045578C:
.incbin "baserom.dol", 0x3D45EC, 0x4

.global lbl_80455790
lbl_80455790:
.incbin "baserom.dol", 0x3D45F0, 0x4

.global lbl_80455794
lbl_80455794:
.incbin "baserom.dol", 0x3D45F4, 0x4

