.include "macros.inc"
.section .rodata, "a"  # 0x8037a178 - 0x8037a1c0

.global lbl_8037A178
lbl_8037A178:
.incbin "baserom.dol", 0x377178, 0x2C

.global lbl_8037A1A4
lbl_8037A1A4:
.incbin "baserom.dol", 0x3771A4, 0xC

.global lbl_8037A1B0
lbl_8037A1B0:
.incbin "baserom.dol", 0x3771B0, 0x10

