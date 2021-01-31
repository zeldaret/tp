.include "macros.inc"
.section .sdata2, "a"  # 0x80455760 - 0x80455770

.global lbl_80455760
lbl_80455760:
.incbin "baserom.dol", 0x3D45C0, 0x4

.global lbl_80455764
lbl_80455764:
.incbin "baserom.dol", 0x3D45C4, 0x4

.global lbl_80455768
lbl_80455768:
.incbin "baserom.dol", 0x3D45C8, 0x4

.global lbl_8045576C
lbl_8045576C:
.incbin "baserom.dol", 0x3D45CC, 0x4

