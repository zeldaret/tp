.include "macros.inc"
.section .rodata, "a"  # 0x803a1c10 - 0x803a1c58

.global lbl_803A1C10
lbl_803A1C10:
.incbin "baserom.dol", 0x39EC10, 0x10

.global lbl_803A1C20
lbl_803A1C20:
.incbin "baserom.dol", 0x39EC20, 0x10

.global lbl_803A1C30
lbl_803A1C30:
.incbin "baserom.dol", 0x39EC30, 0x10

.global lbl_803A1C40
lbl_803A1C40:
.incbin "baserom.dol", 0x39EC40, 0x18

