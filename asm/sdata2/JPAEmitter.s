.include "macros.inc"
.section .sdata2, "a"  # 0x80455370 - 0x80455388

.global lbl_80455370
lbl_80455370:
.incbin "baserom.dol", 0x3D41D0, 0x4

.global lbl_80455374
lbl_80455374:
.incbin "baserom.dol", 0x3D41D4, 0x4

.global lbl_80455378
lbl_80455378:
.incbin "baserom.dol", 0x3D41D8, 0x4

.global lbl_8045537C
lbl_8045537C:
.incbin "baserom.dol", 0x3D41DC, 0x4

.global lbl_80455380
lbl_80455380:
.incbin "baserom.dol", 0x3D41E0, 0x8

