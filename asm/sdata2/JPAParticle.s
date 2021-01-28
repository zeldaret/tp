.include "macros.inc"
.section .sdata2, "a"  # 0x80455388 - 0x804553b8

.global lbl_80455388
lbl_80455388:
.incbin "baserom.dol", 0x3D41E8, 0x4

.global lbl_8045538C
lbl_8045538C:
.incbin "baserom.dol", 0x3D41EC, 0x4

.global lbl_80455390
lbl_80455390:
.incbin "baserom.dol", 0x3D41F0, 0x4

.global lbl_80455394
lbl_80455394:
.incbin "baserom.dol", 0x3D41F4, 0x4

.global lbl_80455398
lbl_80455398:
.incbin "baserom.dol", 0x3D41F8, 0x4

.global lbl_8045539C
lbl_8045539C:
.incbin "baserom.dol", 0x3D41FC, 0x4

.global lbl_804553A0
lbl_804553A0:
.incbin "baserom.dol", 0x3D4200, 0x8

.global lbl_804553A8
lbl_804553A8:
.incbin "baserom.dol", 0x3D4208, 0x8

.global lbl_804553B0
lbl_804553B0:
.incbin "baserom.dol", 0x3D4210, 0x8

