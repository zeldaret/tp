.include "macros.inc"
.section .rodata, "a"  # 0x8037a108 - 0x8037a178

.global lbl_8037A108
lbl_8037A108:
.incbin "baserom.dol", 0x377108, 0xC

.global lbl_8037A114
lbl_8037A114:
.incbin "baserom.dol", 0x377114, 0xC

.global lbl_8037A120
lbl_8037A120:
.incbin "baserom.dol", 0x377120, 0xC

.global lbl_8037A12C
lbl_8037A12C:
.incbin "baserom.dol", 0x37712C, 0x4C

