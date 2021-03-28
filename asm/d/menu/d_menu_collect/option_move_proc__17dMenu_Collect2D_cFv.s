lbl_801B51E8:
/* 801B51E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B51EC  7C 08 02 A6 */	mflr r0
/* 801B51F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B51F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B51F8  93 C1 00 08 */	stw r30, 8(r1)
/* 801B51FC  7C 7E 1B 78 */	mr r30, r3
/* 801B5200  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5204  4B E5 9F C9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5208  7C 7F 1B 78 */	mr r31, r3
/* 801B520C  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B5210  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801B5214  28 00 00 02 */	cmplwi r0, 2
/* 801B5218  40 82 00 08 */	bne lbl_801B5220
/* 801B521C  48 02 E1 ED */	bl _move__14dMenu_Option_cFv
lbl_801B5220:
/* 801B5220  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B5224  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801B5228  28 00 00 03 */	cmplwi r0, 3
/* 801B522C  40 82 00 0C */	bne lbl_801B5238
/* 801B5230  38 00 00 06 */	li r0, 6
/* 801B5234  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B5238:
/* 801B5238  7F E3 FB 78 */	mr r3, r31
/* 801B523C  4B E5 9F 91 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5244  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B524C  7C 08 03 A6 */	mtlr r0
/* 801B5250  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5254  4E 80 00 20 */	blr 
