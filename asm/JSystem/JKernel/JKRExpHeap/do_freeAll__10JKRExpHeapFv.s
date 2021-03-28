lbl_802CF820:
/* 802CF820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CF824  7C 08 02 A6 */	mflr r0
/* 802CF828  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CF82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CF830  7C 7F 1B 78 */	mr r31, r3
/* 802CF834  38 7F 00 18 */	addi r3, r31, 0x18
/* 802CF838  48 06 F8 09 */	bl OSLockMutex
/* 802CF83C  7F E3 FB 78 */	mr r3, r31
/* 802CF840  4B FF ED 35 */	bl callAllDisposer__7JKRHeapFv
/* 802CF844  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802CF848  90 1F 00 78 */	stw r0, 0x78(r31)
/* 802CF84C  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 802CF850  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 802CF854  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802CF858  38 80 00 00 */	li r4, 0
/* 802CF85C  38 A0 00 00 */	li r5, 0
/* 802CF860  80 DF 00 38 */	lwz r6, 0x38(r31)
/* 802CF864  38 C6 FF F0 */	addi r6, r6, -16
/* 802CF868  38 E0 00 00 */	li r7, 0
/* 802CF86C  39 00 00 00 */	li r8, 0
/* 802CF870  48 00 0F A1 */	bl initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
/* 802CF874  38 00 00 00 */	li r0, 0
/* 802CF878  90 1F 00 80 */	stw r0, 0x80(r31)
/* 802CF87C  90 1F 00 84 */	stw r0, 0x84(r31)
/* 802CF880  38 7F 00 18 */	addi r3, r31, 0x18
/* 802CF884  48 06 F8 99 */	bl OSUnlockMutex
/* 802CF888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CF88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CF890  7C 08 03 A6 */	mtlr r0
/* 802CF894  38 21 00 10 */	addi r1, r1, 0x10
/* 802CF898  4E 80 00 20 */	blr 
