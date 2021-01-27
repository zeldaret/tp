.include "macros.inc"
.section .rodata, "a"  # 0x80378e48 - 0x80378f38

.global lbl_80378E48
lbl_80378E48:
.incbin "baserom.dol", 0x375E48, 0x44

.global lbl_80378E8C
lbl_80378E8C:
.incbin "baserom.dol", 0x375E8C, 0x24

.global lbl_80378EB0
lbl_80378EB0:
.incbin "baserom.dol", 0x375EB0, 0x24

.global lbl_80378ED4
lbl_80378ED4:
.incbin "baserom.dol", 0x375ED4, 0x24

.global lbl_80378EF8
lbl_80378EF8:
.incbin "baserom.dol", 0x375EF8, 0x10

.global lbl_80378F08
lbl_80378F08:
.incbin "baserom.dol", 0x375F08, 0x1C

.global lbl_80378F24
lbl_80378F24:
.incbin "baserom.dol", 0x375F24, 0x14

