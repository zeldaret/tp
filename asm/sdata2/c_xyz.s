.include "macros.inc"
.section .sdata2, "a"  # 0x80455070 - 0x804550a0

.global lbl_80455070
lbl_80455070:
.incbin "baserom.dol", 0x3D3ED0, 0x4

.global lbl_80455074
lbl_80455074:
.incbin "baserom.dol", 0x3D3ED4, 0x4

.global lbl_80455078
lbl_80455078:
.incbin "baserom.dol", 0x3D3ED8, 0x4

.global lbl_8045507C
lbl_8045507C:
.incbin "baserom.dol", 0x3D3EDC, 0x4

.global lbl_80455080
lbl_80455080:
.incbin "baserom.dol", 0x3D3EE0, 0x4

.global lbl_80455084
lbl_80455084:
.incbin "baserom.dol", 0x3D3EE4, 0x4

.global lbl_80455088
lbl_80455088:
.incbin "baserom.dol", 0x3D3EE8, 0x8

.global lbl_80455090
lbl_80455090:
.incbin "baserom.dol", 0x3D3EF0, 0x8

.global lbl_80455098
lbl_80455098:
.incbin "baserom.dol", 0x3D3EF8, 0x8

