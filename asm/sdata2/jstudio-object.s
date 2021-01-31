.include "macros.inc"
.section .sdata2, "a"  # 0x804554a0 - 0x804554d0

.global lbl_804554A0
lbl_804554A0:
.incbin "baserom.dol", 0x3D4300, 0x8

.global lbl_804554A8
lbl_804554A8:
.incbin "baserom.dol", 0x3D4308, 0x4

.global lbl_804554AC
lbl_804554AC:
.incbin "baserom.dol", 0x3D430C, 0x4

.global lbl_804554B0
lbl_804554B0:
.incbin "baserom.dol", 0x3D4310, 0x8

.global lbl_804554B8
lbl_804554B8:
.incbin "baserom.dol", 0x3D4318, 0x8

.global lbl_804554C0
lbl_804554C0:
.incbin "baserom.dol", 0x3D4320, 0x8

.global lbl_804554C8
lbl_804554C8:
.incbin "baserom.dol", 0x3D4328, 0x8

