.include "macros.inc"
.section .sdata2, "a"  # 0x804550f0 - 0x80455118

.global lbl_804550F0
lbl_804550F0:
.incbin "baserom.dol", 0x3D3F50, 0x4

.global lbl_804550F4
lbl_804550F4:
.incbin "baserom.dol", 0x3D3F54, 0x4

.global lbl_804550F8
lbl_804550F8:
.incbin "baserom.dol", 0x3D3F58, 0x4

.global lbl_804550FC
lbl_804550FC:
.incbin "baserom.dol", 0x3D3F5C, 0x4

.global lbl_80455100
lbl_80455100:
.incbin "baserom.dol", 0x3D3F60, 0x8

.global lbl_80455108
lbl_80455108:
.incbin "baserom.dol", 0x3D3F68, 0x8

.global lbl_80455110
lbl_80455110:
.incbin "baserom.dol", 0x3D3F70, 0x8

