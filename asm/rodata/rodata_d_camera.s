.include "macros.inc"
.section .rodata, "a"  # 0x80393dc0 - 0x80394308

.global lbl_80393DC0
lbl_80393DC0:
.incbin "baserom.dol", 0x390DC0, 0x198

.global lbl_80393F58
lbl_80393F58:
.incbin "baserom.dol", 0x390F58, 0x10

.global lbl_80393F68
lbl_80393F68:
.incbin "baserom.dol", 0x390F68, 0x3A0

