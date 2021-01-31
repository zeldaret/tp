.include "macros.inc"
.section .rodata, "a"  # 0x8039d9a8 - 0x803a1b80

.global lbl_8039D9A8
lbl_8039D9A8:
.incbin "baserom.dol", 0x39A9A8, 0x265C

.global lbl_803A0004
lbl_803A0004:
.incbin "baserom.dol", 0x39D004, 0x1B7C

