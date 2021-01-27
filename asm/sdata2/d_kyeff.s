.include "macros.inc"
.section .sdata2, "a"  # 0x80453e58 - 0x80453e70

.global lbl_80453E58
lbl_80453E58:
.incbin "baserom.dol", 0x3D2CB8, 0x4

.global lbl_80453E5C
lbl_80453E5C:
.incbin "baserom.dol", 0x3D2CBC, 0x4

.global lbl_80453E60
lbl_80453E60:
.incbin "baserom.dol", 0x3D2CC0, 0x8

.global lbl_80453E68
lbl_80453E68:
.incbin "baserom.dol", 0x3D2CC8, 0x4

.global lbl_80453E6C
lbl_80453E6C:
.incbin "baserom.dol", 0x3D2CCC, 0x4

