.include "macros.inc"

.section .text, "ax" # 802a4ac4


.global JAISoundHandle
JAISoundHandle:
/* 802A4AC4 002A1A04  38 00 00 00 */	li r0, 0
/* 802A4AC8 002A1A08  90 03 00 00 */	stw r0, 0(r3)
/* 802A4ACC 002A1A0C  4E 80 00 20 */	blr 

