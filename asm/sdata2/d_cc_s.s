.include "macros.inc"
.section .sdata2, "a"  # 0x80452778 - 0x80452798

.global lbl_80452778
lbl_80452778:
.incbin "baserom.dol", 0x3D15D8, 0x4

.global lbl_8045277C
lbl_8045277C:
.incbin "baserom.dol", 0x3D15DC, 0x4

.global lbl_80452780
lbl_80452780:
.incbin "baserom.dol", 0x3D15E0, 0x8

.global lbl_80452788
lbl_80452788:
.incbin "baserom.dol", 0x3D15E8, 0x8

.global lbl_80452790
lbl_80452790:
.incbin "baserom.dol", 0x3D15F0, 0x8

