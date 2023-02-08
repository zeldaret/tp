lbl_802A56C8:
/* 802A56C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A56CC  7C 08 02 A6 */	mflr r0
/* 802A56D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A56D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A56D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A56DC  7C BE 2B 78 */	mr r30, r5
/* 802A56E0  7C DF 33 78 */	mr r31, r6
/* 802A56E4  80 04 00 00 */	lwz r0, 0(r4)
/* 802A56E8  90 01 00 08 */	stw r0, 8(r1)
/* 802A56EC  38 81 00 08 */	addi r4, r1, 8
/* 802A56F0  7F E5 FB 78 */	mr r5, r31
/* 802A56F4  4B FF FE A5 */	bl newStaticSeqDataBlock___10JAUSectionF10JAISoundIDUl
/* 802A56F8  28 03 00 00 */	cmplwi r3, 0
/* 802A56FC  41 82 00 18 */	beq lbl_802A5714
/* 802A5700  7F C4 F3 78 */	mr r4, r30
/* 802A5704  7F E5 FB 78 */	mr r5, r31
/* 802A5708  4B D5 DE 39 */	bl memcpy
/* 802A570C  38 60 00 01 */	li r3, 1
/* 802A5710  48 00 00 08 */	b lbl_802A5718
lbl_802A5714:
/* 802A5714  38 60 00 00 */	li r3, 0
lbl_802A5718:
/* 802A5718  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A571C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A5720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5724  7C 08 03 A6 */	mtlr r0
/* 802A5728  38 21 00 20 */	addi r1, r1, 0x20
/* 802A572C  4E 80 00 20 */	blr 
