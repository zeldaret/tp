lbl_801B5938:
/* 801B5938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B593C  7C 08 02 A6 */	mflr r0
/* 801B5940  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5948  93 C1 00 08 */	stw r30, 8(r1)
/* 801B594C  7C 7E 1B 78 */	mr r30, r3
/* 801B5950  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5954  4B E5 98 79 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5958  7C 7F 1B 78 */	mr r31, r3
/* 801B595C  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 801B5960  88 03 02 04 */	lbz r0, 0x204(r3)
/* 801B5964  28 00 00 02 */	cmplwi r0, 2
/* 801B5968  40 82 00 08 */	bne lbl_801B5970
/* 801B596C  48 04 1D AD */	bl _move__13dMenu_Skill_cFv
lbl_801B5970:
/* 801B5970  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 801B5974  88 03 02 04 */	lbz r0, 0x204(r3)
/* 801B5978  28 00 00 03 */	cmplwi r0, 3
/* 801B597C  40 82 00 0C */	bne lbl_801B5988
/* 801B5980  38 00 00 0F */	li r0, 0xf
/* 801B5984  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B5988:
/* 801B5988  7F E3 FB 78 */	mr r3, r31
/* 801B598C  4B E5 98 41 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5994  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B599C  7C 08 03 A6 */	mtlr r0
/* 801B59A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B59A4  4E 80 00 20 */	blr 
