.include "macros.inc"
.section .sdata2, "a"  # 0x80455558 - 0x80455588

.global lbl_80455558
lbl_80455558:
.incbin "baserom.dol", 0x3D43B8, 0x8

.global lbl_80455560
lbl_80455560:
.incbin "baserom.dol", 0x3D43C0, 0x8

.global lbl_80455568
lbl_80455568:
.incbin "baserom.dol", 0x3D43C8, 0x4

.global lbl_8045556C
lbl_8045556C:
.incbin "baserom.dol", 0x3D43CC, 0x8

.global lbl_80455574
lbl_80455574:
.incbin "baserom.dol", 0x3D43D4, 0x8

.global lbl_8045557C
lbl_8045557C:
.incbin "baserom.dol", 0x3D43DC, 0x4

.global lbl_80455580
lbl_80455580:
.incbin "baserom.dol", 0x3D43E0, 0x8

