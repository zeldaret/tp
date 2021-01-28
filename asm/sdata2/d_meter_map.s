.include "macros.inc"
.section .sdata2, "a"  # 0x80454820 - 0x80454848

.global lbl_80454820
lbl_80454820:
.incbin "baserom.dol", 0x3D3680, 0x8

.global lbl_80454828
lbl_80454828:
.incbin "baserom.dol", 0x3D3688, 0x8

.global lbl_80454830
lbl_80454830:
.incbin "baserom.dol", 0x3D3690, 0x4

.global lbl_80454834
lbl_80454834:
.incbin "baserom.dol", 0x3D3694, 0x4

.global lbl_80454838
lbl_80454838:
.incbin "baserom.dol", 0x3D3698, 0x8

.global lbl_80454840
lbl_80454840:
.incbin "baserom.dol", 0x3D36A0, 0x4

.global lbl_80454844
lbl_80454844:
.incbin "baserom.dol", 0x3D36A4, 0x4

