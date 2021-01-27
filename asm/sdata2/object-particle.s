.include "macros.inc"
.section .sdata2, "a"  # 0x80455520 - 0x80455558

.global lbl_80455520
lbl_80455520:
.incbin "baserom.dol", 0x3D4380, 0x4

.global lbl_80455524
lbl_80455524:
.incbin "baserom.dol", 0x3D4384, 0x4

.global lbl_80455528
lbl_80455528:
.incbin "baserom.dol", 0x3D4388, 0x8

.global lbl_80455530
lbl_80455530:
.incbin "baserom.dol", 0x3D4390, 0x8

.global lbl_80455538
lbl_80455538:
.incbin "baserom.dol", 0x3D4398, 0x8

.global lbl_80455540
lbl_80455540:
.incbin "baserom.dol", 0x3D43A0, 0x8

.global lbl_80455548
lbl_80455548:
.incbin "baserom.dol", 0x3D43A8, 0x8

.global lbl_80455550
lbl_80455550:
.incbin "baserom.dol", 0x3D43B0, 0x8

