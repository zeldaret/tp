.include "macros.inc"
.section .rodata, "a"  # 0x80399c18 - 0x80399c98

.global lbl_80399C18
lbl_80399C18:
.incbin "baserom.dol", 0x396C18, 0x18

.global lbl_80399C30
lbl_80399C30:
.incbin "baserom.dol", 0x396C30, 0x68

