.include "macros.inc"
.section .rodata, "a"  # 0x80378880 - 0x80378a50

.global lbl_80378880
lbl_80378880:
.incbin "baserom.dol", 0x375880, 0xC

.global lbl_8037888C
lbl_8037888C:
.incbin "baserom.dol", 0x37588C, 0xC

.global lbl_80378898
lbl_80378898:
.incbin "baserom.dol", 0x375898, 0x30

.global lbl_803788C8
lbl_803788C8:
.incbin "baserom.dol", 0x3758C8, 0x188

