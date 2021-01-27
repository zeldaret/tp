.include "macros.inc"
.section .sdata2, "a"  # 0x80455400 - 0x80455450

.global lbl_80455400
lbl_80455400:
.incbin "baserom.dol", 0x3D4260, 0x8

.global lbl_80455408
lbl_80455408:
.incbin "baserom.dol", 0x3D4268, 0x8

.global lbl_80455410
lbl_80455410:
.incbin "baserom.dol", 0x3D4270, 0x8

.global lbl_80455418
lbl_80455418:
.incbin "baserom.dol", 0x3D4278, 0x8

.global lbl_80455420
lbl_80455420:
.incbin "baserom.dol", 0x3D4280, 0x8

.global lbl_80455428
lbl_80455428:
.incbin "baserom.dol", 0x3D4288, 0x8

.global lbl_80455430
lbl_80455430:
.incbin "baserom.dol", 0x3D4290, 0x8

.global lbl_80455438
lbl_80455438:
.incbin "baserom.dol", 0x3D4298, 0x8

.global lbl_80455440
lbl_80455440:
.incbin "baserom.dol", 0x3D42A0, 0x8

.global lbl_80455448
lbl_80455448:
.incbin "baserom.dol", 0x3D42A8, 0x8

