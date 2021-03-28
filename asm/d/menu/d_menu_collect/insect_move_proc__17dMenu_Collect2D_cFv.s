lbl_801B5BAC:
/* 801B5BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5BB0  7C 08 02 A6 */	mflr r0
/* 801B5BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5BBC  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5BC0  7C 7E 1B 78 */	mr r30, r3
/* 801B5BC4  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5BC8  4B E5 96 05 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5BCC  7C 7F 1B 78 */	mr r31, r3
/* 801B5BD0  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 801B5BD4  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801B5BD8  28 00 00 02 */	cmplwi r0, 2
/* 801B5BDC  40 82 00 08 */	bne lbl_801B5BE4
/* 801B5BE0  48 02 2A E9 */	bl _move__14dMenu_Insect_cFv
lbl_801B5BE4:
/* 801B5BE4  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 801B5BE8  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801B5BEC  28 00 00 03 */	cmplwi r0, 3
/* 801B5BF0  40 82 00 0C */	bne lbl_801B5BFC
/* 801B5BF4  38 00 00 12 */	li r0, 0x12
/* 801B5BF8  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B5BFC:
/* 801B5BFC  7F E3 FB 78 */	mr r3, r31
/* 801B5C00  4B E5 95 CD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5C08  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5C10  7C 08 03 A6 */	mtlr r0
/* 801B5C14  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5C18  4E 80 00 20 */	blr 
