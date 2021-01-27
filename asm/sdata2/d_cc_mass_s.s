.include "macros.inc"
.section .sdata2, "a"  # 0x80452760 - 0x80452778

.global lbl_80452760
lbl_80452760:
.incbin "baserom.dol", 0x3D15C0, 0x4

.global lbl_80452764
lbl_80452764:
.incbin "baserom.dol", 0x3D15C4, 0x4

.global lbl_80452768
lbl_80452768:
.incbin "baserom.dol", 0x3D15C8, 0x4

.global lbl_8045276C
lbl_8045276C:
.incbin "baserom.dol", 0x3D15CC, 0x4

.global lbl_80452770
lbl_80452770:
.incbin "baserom.dol", 0x3D15D0, 0x4

.global lbl_80452774
lbl_80452774:
.incbin "baserom.dol", 0x3D15D4, 0x4

