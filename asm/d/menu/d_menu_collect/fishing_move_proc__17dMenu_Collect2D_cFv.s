lbl_801B56C8:
/* 801B56C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B56CC  7C 08 02 A6 */	mflr r0
/* 801B56D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B56D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B56D8  93 C1 00 08 */	stw r30, 8(r1)
/* 801B56DC  7C 7E 1B 78 */	mr r30, r3
/* 801B56E0  80 63 00 08 */	lwz r3, 8(r3)
/* 801B56E4  4B E5 9A E9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B56E8  7C 7F 1B 78 */	mr r31, r3
/* 801B56EC  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 801B56F0  88 03 01 FA */	lbz r0, 0x1fa(r3)
/* 801B56F4  28 00 00 02 */	cmplwi r0, 2
/* 801B56F8  40 82 00 08 */	bne lbl_801B5700
/* 801B56FC  48 00 F9 B9 */	bl _move__15dMenu_Fishing_cFv
lbl_801B5700:
/* 801B5700  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 801B5704  88 03 01 FA */	lbz r0, 0x1fa(r3)
/* 801B5708  28 00 00 03 */	cmplwi r0, 3
/* 801B570C  40 82 00 0C */	bne lbl_801B5718
/* 801B5710  38 00 00 0C */	li r0, 0xc
/* 801B5714  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B5718:
/* 801B5718  7F E3 FB 78 */	mr r3, r31
/* 801B571C  4B E5 9A B1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5720  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5724  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B572C  7C 08 03 A6 */	mtlr r0
/* 801B5730  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5734  4E 80 00 20 */	blr 
