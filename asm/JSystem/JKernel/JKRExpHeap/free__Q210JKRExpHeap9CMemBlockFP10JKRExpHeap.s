lbl_802D08CC:
/* 802D08CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D08D0  7C 08 02 A6 */	mflr r0
/* 802D08D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D08D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D08DC  93 C1 00 08 */	stw r30, 8(r1)
/* 802D08E0  7C 7E 1B 78 */	mr r30, r3
/* 802D08E4  7C 9F 23 78 */	mr r31, r4
/* 802D08E8  7F E3 FB 78 */	mr r3, r31
/* 802D08EC  7F C4 F3 78 */	mr r4, r30
/* 802D08F0  4B FF F5 F9 */	bl removeUsedBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802D08F4  7F E3 FB 78 */	mr r3, r31
/* 802D08F8  7F C4 F3 78 */	mr r4, r30
/* 802D08FC  4B FF F6 21 */	bl recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802D0900  38 60 00 00 */	li r3, 0
/* 802D0904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D0908  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D090C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0910  7C 08 03 A6 */	mtlr r0
/* 802D0914  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0918  4E 80 00 20 */	blr 
