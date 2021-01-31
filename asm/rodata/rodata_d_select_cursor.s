.include "macros.inc"
.section .rodata, "a"  # 0x80394a10 - 0x80394c10

.global lbl_80394A10
lbl_80394A10:
.incbin "baserom.dol", 0x391A10, 0x20

.global lbl_80394A30
lbl_80394A30:
.incbin "baserom.dol", 0x391A30, 0x20

.global lbl_80394A50
lbl_80394A50:
.incbin "baserom.dol", 0x391A50, 0x40

.global lbl_80394A90
lbl_80394A90:
.incbin "baserom.dol", 0x391A90, 0x10

.global lbl_80394AA0
lbl_80394AA0:
.incbin "baserom.dol", 0x391AA0, 0x170

