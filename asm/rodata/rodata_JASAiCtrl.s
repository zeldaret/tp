.include "macros.inc"
.section .rodata, "a"  # 0x8039b2e0 - 0x8039b338

.global lbl_8039B2E0
lbl_8039B2E0:
.incbin "baserom.dol", 0x3982E0, 0x10

.global lbl_8039B2F0
lbl_8039B2F0:
.incbin "baserom.dol", 0x3982F0, 0x48

