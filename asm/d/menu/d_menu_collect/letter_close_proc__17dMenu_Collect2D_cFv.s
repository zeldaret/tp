lbl_801B5504:
/* 801B5504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5508  7C 08 02 A6 */	mflr r0
/* 801B550C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5514  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5518  7C 7E 1B 78 */	mr r30, r3
/* 801B551C  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5520  4B E5 9C AD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5524  7C 7F 1B 78 */	mr r31, r3
/* 801B5528  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801B552C  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801B5530  28 00 00 03 */	cmplwi r0, 3
/* 801B5534  40 82 00 08 */	bne lbl_801B553C
/* 801B5538  48 02 87 61 */	bl _close__14dMenu_Letter_cFv
lbl_801B553C:
/* 801B553C  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801B5540  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801B5544  28 00 00 00 */	cmplwi r0, 0
/* 801B5548  40 82 00 18 */	bne lbl_801B5560
/* 801B554C  38 00 00 00 */	li r0, 0
/* 801B5550  98 1E 02 2C */	stb r0, 0x22c(r30)
/* 801B5554  38 00 00 FF */	li r0, 0xff
/* 801B5558  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B555C  98 03 00 B4 */	stb r0, 0xb4(r3)
lbl_801B5560:
/* 801B5560  7F E3 FB 78 */	mr r3, r31
/* 801B5564  4B E5 9C 69 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B556C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5574  7C 08 03 A6 */	mtlr r0
/* 801B5578  38 21 00 10 */	addi r1, r1, 0x10
/* 801B557C  4E 80 00 20 */	blr 
