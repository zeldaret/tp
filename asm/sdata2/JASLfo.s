.include "macros.inc"
.section .sdata2, "a"  # 0x804556e0 - 0x804556f8

.global lbl_804556E0
lbl_804556E0:
.incbin "baserom.dol", 0x3D4540, 0x4

.global lbl_804556E4
lbl_804556E4:
.incbin "baserom.dol", 0x3D4544, 0x4

.global lbl_804556E8
lbl_804556E8:
.incbin "baserom.dol", 0x3D4548, 0x4

.global lbl_804556EC
lbl_804556EC:
.incbin "baserom.dol", 0x3D454C, 0x4

.global lbl_804556F0
lbl_804556F0:
.incbin "baserom.dol", 0x3D4550, 0x8

