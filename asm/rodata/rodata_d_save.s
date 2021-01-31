.include "macros.inc"
.section .rodata, "a"  # 0x803790c0 - 0x80379298

.global lbl_803790C0
lbl_803790C0:
.incbin "baserom.dol", 0x3760C0, 0x174

.global lbl_80379234
lbl_80379234:
.incbin "baserom.dol", 0x376234, 0x64

