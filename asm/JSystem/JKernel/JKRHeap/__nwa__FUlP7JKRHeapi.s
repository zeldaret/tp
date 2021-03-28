lbl_802CED10:
/* 802CED10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CED14  7C 08 02 A6 */	mflr r0
/* 802CED18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CED1C  7C 80 23 78 */	mr r0, r4
/* 802CED20  7C A4 2B 78 */	mr r4, r5
/* 802CED24  7C 05 03 78 */	mr r5, r0
/* 802CED28  4B FF F7 4D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802CED2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CED30  7C 08 03 A6 */	mtlr r0
/* 802CED34  38 21 00 10 */	addi r1, r1, 0x10
/* 802CED38  4E 80 00 20 */	blr 
