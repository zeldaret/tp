.include "macros.inc"
.section .sdata2, "a"  # 0x80455fc0 - 0x80455fd0

.global lbl_80455FC0
lbl_80455FC0:
.incbin "baserom.dol", 0x3D4E20, 0x4

.global lbl_80455FC4
lbl_80455FC4:
.incbin "baserom.dol", 0x3D4E24, 0x4

.global lbl_80455FC8
lbl_80455FC8:
.incbin "baserom.dol", 0x3D4E28, 0x8

