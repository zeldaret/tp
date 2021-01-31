.include "macros.inc"
.section .rodata, "a"  # 0x8039aa40 - 0x8039aa68

.global lbl_8039AA40
lbl_8039AA40:
.incbin "baserom.dol", 0x397A40, 0xC

.global lbl_8039AA4C
lbl_8039AA4C:
.incbin "baserom.dol", 0x397A4C, 0xC

.global lbl_8039AA58
lbl_8039AA58:
.incbin "baserom.dol", 0x397A58, 0x10

