.include "macros.inc"
.section .sdata2, "a"  # 0x804555d8 - 0x80455610

.global lbl_804555D8
lbl_804555D8:
.incbin "baserom.dol", 0x3D4438, 0x4

.global lbl_804555DC
lbl_804555DC:
.incbin "baserom.dol", 0x3D443C, 0x4

.global lbl_804555E0
lbl_804555E0:
.incbin "baserom.dol", 0x3D4440, 0x4

.global lbl_804555E4
lbl_804555E4:
.incbin "baserom.dol", 0x3D4444, 0x4

.global lbl_804555E8
lbl_804555E8:
.incbin "baserom.dol", 0x3D4448, 0x8

.global lbl_804555F0
lbl_804555F0:
.incbin "baserom.dol", 0x3D4450, 0x8

.global lbl_804555F8
lbl_804555F8:
.incbin "baserom.dol", 0x3D4458, 0x4

.global lbl_804555FC
lbl_804555FC:
.incbin "baserom.dol", 0x3D445C, 0x4

.global lbl_80455600
lbl_80455600:
.incbin "baserom.dol", 0x3D4460, 0x8

.global lbl_80455608
lbl_80455608:
.incbin "baserom.dol", 0x3D4468, 0x8

