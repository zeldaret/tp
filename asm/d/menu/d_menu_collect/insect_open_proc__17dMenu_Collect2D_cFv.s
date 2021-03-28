lbl_801B5B00:
/* 801B5B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5B04  7C 08 02 A6 */	mflr r0
/* 801B5B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5B10  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5B14  7C 7E 1B 78 */	mr r30, r3
/* 801B5B18  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5B1C  4B E5 96 B1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5B20  7C 7F 1B 78 */	mr r31, r3
/* 801B5B24  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 801B5B28  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801B5B2C  28 00 00 01 */	cmplwi r0, 1
/* 801B5B30  40 82 00 08 */	bne lbl_801B5B38
/* 801B5B34  48 02 2E 19 */	bl _open__14dMenu_Insect_cFv
lbl_801B5B38:
/* 801B5B38  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 801B5B3C  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801B5B40  28 00 00 02 */	cmplwi r0, 2
/* 801B5B44  40 82 00 0C */	bne lbl_801B5B50
/* 801B5B48  38 00 00 11 */	li r0, 0x11
/* 801B5B4C  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B5B50:
/* 801B5B50  7F E3 FB 78 */	mr r3, r31
/* 801B5B54  4B E5 96 79 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5B58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5B5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5B64  7C 08 03 A6 */	mtlr r0
/* 801B5B68  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5B6C  4E 80 00 20 */	blr 
