.include "macros.inc"
.section .sdata2, "a"  # 0x804565e8 - 0x80456610

.global lbl_804565E8
lbl_804565E8:
.incbin "baserom.dol", 0x3D5448, 0x8

.global lbl_804565F0
lbl_804565F0:
.incbin "baserom.dol", 0x3D5450, 0x8

.global lbl_804565F8
lbl_804565F8:
.incbin "baserom.dol", 0x3D5458, 0x4

.global lbl_804565FC
lbl_804565FC:
.incbin "baserom.dol", 0x3D545C, 0x4

.global lbl_80456600
lbl_80456600:
.incbin "baserom.dol", 0x3D5460, 0x4

.global lbl_80456604
lbl_80456604:
.incbin "baserom.dol", 0x3D5464, 0x4

.global lbl_80456608
lbl_80456608:
.incbin "baserom.dol", 0x3D5468, 0x4

.global lbl_8045660C
lbl_8045660C:
.incbin "baserom.dol", 0x3D546C, 0x4

