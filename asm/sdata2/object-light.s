.include "macros.inc"
.section .sdata2, "a"  # 0x804554e8 - 0x80455510

.global lbl_804554E8
lbl_804554E8:
.incbin "baserom.dol", 0x3D4348, 0x8

.global lbl_804554F0
lbl_804554F0:
.incbin "baserom.dol", 0x3D4350, 0x8

.global lbl_804554F8
lbl_804554F8:
.incbin "baserom.dol", 0x3D4358, 0x8

.global lbl_80455500
lbl_80455500:
.incbin "baserom.dol", 0x3D4360, 0x8

.global lbl_80455508
lbl_80455508:
.incbin "baserom.dol", 0x3D4368, 0x4

.global lbl_8045550C
lbl_8045550C:
.incbin "baserom.dol", 0x3D436C, 0x4

