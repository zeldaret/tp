.include "macros.inc"
.section .sdata2, "a"  # 0x80451ec0 - 0x80451ed0

.global lbl_80451EC0
lbl_80451EC0:
.incbin "baserom.dol", 0x3D0D20, 0x4

.global lbl_80451EC4
lbl_80451EC4:
.incbin "baserom.dol", 0x3D0D24, 0x4

.global lbl_80451EC8
lbl_80451EC8:
.incbin "baserom.dol", 0x3D0D28, 0x4

.global lbl_80451ECC
lbl_80451ECC:
.incbin "baserom.dol", 0x3D0D2C, 0x4

