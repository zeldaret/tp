lbl_801B5458:
/* 801B5458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B545C  7C 08 02 A6 */	mflr r0
/* 801B5460  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5468  93 C1 00 08 */	stw r30, 8(r1)
/* 801B546C  7C 7E 1B 78 */	mr r30, r3
/* 801B5470  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5474  4B E5 9D 59 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5478  7C 7F 1B 78 */	mr r31, r3
/* 801B547C  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801B5480  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801B5484  28 00 00 02 */	cmplwi r0, 2
/* 801B5488  40 82 00 08 */	bne lbl_801B5490
/* 801B548C  48 02 7F E9 */	bl _move__14dMenu_Letter_cFv
lbl_801B5490:
/* 801B5490  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801B5494  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801B5498  28 00 00 03 */	cmplwi r0, 3
/* 801B549C  40 82 00 0C */	bne lbl_801B54A8
/* 801B54A0  38 00 00 09 */	li r0, 9
/* 801B54A4  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B54A8:
/* 801B54A8  7F E3 FB 78 */	mr r3, r31
/* 801B54AC  4B E5 9D 21 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B54B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B54B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B54B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B54BC  7C 08 03 A6 */	mtlr r0
/* 801B54C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B54C4  4E 80 00 20 */	blr 
