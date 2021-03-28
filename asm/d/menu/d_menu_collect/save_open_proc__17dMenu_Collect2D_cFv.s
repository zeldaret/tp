lbl_801B4EC0:
/* 801B4EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4EC4  7C 08 02 A6 */	mflr r0
/* 801B4EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4ED0  93 C1 00 08 */	stw r30, 8(r1)
/* 801B4ED4  7C 7E 1B 78 */	mr r30, r3
/* 801B4ED8  80 63 00 08 */	lwz r3, 8(r3)
/* 801B4EDC  4B E5 A2 F1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B4EE0  7C 7F 1B 78 */	mr r31, r3
/* 801B4EE4  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4EE8  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 801B4EEC  28 00 00 01 */	cmplwi r0, 1
/* 801B4EF0  40 82 00 08 */	bne lbl_801B4EF8
/* 801B4EF4  48 03 BA B9 */	bl _open__12dMenu_save_cFv
lbl_801B4EF8:
/* 801B4EF8  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4EFC  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 801B4F00  28 00 00 02 */	cmplwi r0, 2
/* 801B4F04  40 82 00 0C */	bne lbl_801B4F10
/* 801B4F08  38 00 00 02 */	li r0, 2
/* 801B4F0C  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B4F10:
/* 801B4F10  7F E3 FB 78 */	mr r3, r31
/* 801B4F14  4B E5 A2 B9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B4F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4F1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4F24  7C 08 03 A6 */	mtlr r0
/* 801B4F28  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4F2C  4E 80 00 20 */	blr 
