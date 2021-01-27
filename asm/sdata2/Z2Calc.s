.include "macros.inc"
.section .sdata2, "a"  # 0x80455820 - 0x80455838

.global lbl_80455820
lbl_80455820:
.incbin "baserom.dol", 0x3D4680, 0x4

.global lbl_80455824
lbl_80455824:
.incbin "baserom.dol", 0x3D4684, 0x4

.global lbl_80455828
lbl_80455828:
.incbin "baserom.dol", 0x3D4688, 0x4

.global lbl_8045582C
lbl_8045582C:
.incbin "baserom.dol", 0x3D468C, 0x4

.global lbl_80455830
lbl_80455830:
.incbin "baserom.dol", 0x3D4690, 0x4

.global lbl_80455834
lbl_80455834:
.incbin "baserom.dol", 0x3D4694, 0x4

