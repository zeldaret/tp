.include "macros.inc"
.section .sdata2, "a"  # 0x80456430 - 0x80456468

.global lbl_80456430
lbl_80456430:
.incbin "baserom.dol", 0x3D5290, 0x4

.global lbl_80456434
lbl_80456434:
.incbin "baserom.dol", 0x3D5294, 0x4

.global lbl_80456438
lbl_80456438:
.incbin "baserom.dol", 0x3D5298, 0x8

.global lbl_80456440
lbl_80456440:
.incbin "baserom.dol", 0x3D52A0, 0x8

.global lbl_80456448
lbl_80456448:
.incbin "baserom.dol", 0x3D52A8, 0x8

.global lbl_80456450
lbl_80456450:
.incbin "baserom.dol", 0x3D52B0, 0x8

.global lbl_80456458
lbl_80456458:
.incbin "baserom.dol", 0x3D52B8, 0x4

.global lbl_8045645C
lbl_8045645C:
.incbin "baserom.dol", 0x3D52BC, 0x4

.global lbl_80456460
lbl_80456460:
.incbin "baserom.dol", 0x3D52C0, 0x8

