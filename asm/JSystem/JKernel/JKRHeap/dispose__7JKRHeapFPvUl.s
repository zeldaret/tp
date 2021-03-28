lbl_802CEA78:
/* 802CEA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEA7C  7C 08 02 A6 */	mflr r0
/* 802CEA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEA84  7C A4 2A 14 */	add r5, r4, r5
/* 802CEA88  4B FF FF 5D */	bl dispose_subroutine__7JKRHeapFUlUl
/* 802CEA8C  38 60 00 00 */	li r3, 0
/* 802CEA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEA94  7C 08 03 A6 */	mtlr r0
/* 802CEA98  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEA9C  4E 80 00 20 */	blr 
