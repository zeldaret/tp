.include "macros.inc"
.section .sdata2, "a"  # 0x80455310 - 0x80455338

.global lbl_80455310
lbl_80455310:
.incbin "baserom.dol", 0x3D4170, 0x4

.global lbl_80455314
lbl_80455314:
.incbin "baserom.dol", 0x3D4174, 0x4

.global lbl_80455318
lbl_80455318:
.incbin "baserom.dol", 0x3D4178, 0x8

.global lbl_80455320
lbl_80455320:
.incbin "baserom.dol", 0x3D4180, 0x8

.global lbl_80455328
lbl_80455328:
.incbin "baserom.dol", 0x3D4188, 0x8

.global lbl_80455330
lbl_80455330:
.incbin "baserom.dol", 0x3D4190, 0x8

