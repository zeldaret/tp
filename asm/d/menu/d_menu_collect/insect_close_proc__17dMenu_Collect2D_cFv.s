lbl_801B5C58:
/* 801B5C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5C5C  7C 08 02 A6 */	mflr r0
/* 801B5C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5C68  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5C6C  7C 7E 1B 78 */	mr r30, r3
/* 801B5C70  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5C74  4B E5 95 59 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5C78  7C 7F 1B 78 */	mr r31, r3
/* 801B5C7C  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 801B5C80  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801B5C84  28 00 00 03 */	cmplwi r0, 3
/* 801B5C88  40 82 00 08 */	bne lbl_801B5C90
/* 801B5C8C  48 02 2E A1 */	bl _close__14dMenu_Insect_cFv
lbl_801B5C90:
/* 801B5C90  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 801B5C94  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801B5C98  28 00 00 00 */	cmplwi r0, 0
/* 801B5C9C  40 82 00 18 */	bne lbl_801B5CB4
/* 801B5CA0  38 00 00 00 */	li r0, 0
/* 801B5CA4  98 1E 02 2C */	stb r0, 0x22c(r30)
/* 801B5CA8  38 00 00 FF */	li r0, 0xff
/* 801B5CAC  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B5CB0  98 03 00 B4 */	stb r0, 0xb4(r3)
lbl_801B5CB4:
/* 801B5CB4  7F E3 FB 78 */	mr r3, r31
/* 801B5CB8  4B E5 95 15 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5CBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5CC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5CC8  7C 08 03 A6 */	mtlr r0
/* 801B5CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5CD0  4E 80 00 20 */	blr 
