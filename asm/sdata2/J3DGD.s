.include "macros.inc"
.section .sdata2, "a"  # 0x80456328 - 0x80456368

.global lbl_80456328
lbl_80456328:
.incbin "baserom.dol", 0x3D5188, 0x4

.global lbl_8045632C
lbl_8045632C:
.incbin "baserom.dol", 0x3D518C, 0x4

.global lbl_80456330
lbl_80456330:
.incbin "baserom.dol", 0x3D5190, 0x4

.global lbl_80456334
lbl_80456334:
.incbin "baserom.dol", 0x3D5194, 0x4

.global lbl_80456338
lbl_80456338:
.incbin "baserom.dol", 0x3D5198, 0x8

.global lbl_80456340
lbl_80456340:
.incbin "baserom.dol", 0x3D51A0, 0x8

.global lbl_80456348
lbl_80456348:
.incbin "baserom.dol", 0x3D51A8, 0x8

.global lbl_80456350
lbl_80456350:
.incbin "baserom.dol", 0x3D51B0, 0x8

.global lbl_80456358
lbl_80456358:
.incbin "baserom.dol", 0x3D51B8, 0x8

.global lbl_80456360
lbl_80456360:
.incbin "baserom.dol", 0x3D51C0, 0x8

