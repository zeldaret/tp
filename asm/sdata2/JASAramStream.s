.include "macros.inc"
.section .sdata2, "a"  # 0x80455610 - 0x80455630

.global lbl_80455610
lbl_80455610:
.incbin "baserom.dol", 0x3D4470, 0x4

.global lbl_80455614
lbl_80455614:
.incbin "baserom.dol", 0x3D4474, 0x4

.global lbl_80455618
lbl_80455618:
.incbin "baserom.dol", 0x3D4478, 0x4

.global lbl_8045561C
lbl_8045561C:
.incbin "baserom.dol", 0x3D447C, 0x4

.global lbl_80455620
lbl_80455620:
.incbin "baserom.dol", 0x3D4480, 0x8

.global lbl_80455628
lbl_80455628:
.incbin "baserom.dol", 0x3D4488, 0x8

