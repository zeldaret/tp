lbl_802CEAA0:
/* 802CEAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEAA4  7C 08 02 A6 */	mflr r0
/* 802CEAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEAAC  4B FF FF 39 */	bl dispose_subroutine__7JKRHeapFUlUl
/* 802CEAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEAB4  7C 08 03 A6 */	mtlr r0
/* 802CEAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEABC  4E 80 00 20 */	blr 
