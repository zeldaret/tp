.include "macros.inc"
.section .rodata, "a"  # 0x80394910 - 0x803949f0

.global lbl_80394910
lbl_80394910:
.incbin "baserom.dol", 0x391910, 0x28

.global lbl_80394938
lbl_80394938:
.incbin "baserom.dol", 0x391938, 0x28

.global lbl_80394960
lbl_80394960:
.incbin "baserom.dol", 0x391960, 0x50

.global lbl_803949B0
lbl_803949B0:
.incbin "baserom.dol", 0x3919B0, 0x28

.global lbl_803949D8
lbl_803949D8:
.incbin "baserom.dol", 0x3919D8, 0x18

