.include "macros.inc"

.section .text, "ax" # 80021308


.global fpcDwPi_Get
fpcDwPi_Get:
/* 80021308 0001E248  A8 63 00 00 */	lha r3, 0(r3)
/* 8002130C 0001E24C  4E 80 00 20 */	blr 

.global fpcDwPi_Set
fpcDwPi_Set:
/* 80021310 0001E250  B0 83 00 00 */	sth r4, 0(r3)
/* 80021314 0001E254  4E 80 00 20 */	blr 

.global fpcDwPi_Init
fpcDwPi_Init:
/* 80021318 0001E258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002131C 0001E25C  7C 08 02 A6 */	mflr r0
/* 80021320 0001E260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021324 0001E264  4B FF FF ED */	bl fpcDwPi_Set
/* 80021328 0001E268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002132C 0001E26C  7C 08 03 A6 */	mtlr r0
/* 80021330 0001E270  38 21 00 10 */	addi r1, r1, 0x10
/* 80021334 0001E274  4E 80 00 20 */	blr 

