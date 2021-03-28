lbl_801B4F6C:
/* 801B4F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4F70  7C 08 02 A6 */	mflr r0
/* 801B4F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4F78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4F7C  93 C1 00 08 */	stw r30, 8(r1)
/* 801B4F80  7C 7E 1B 78 */	mr r30, r3
/* 801B4F84  80 63 00 08 */	lwz r3, 8(r3)
/* 801B4F88  4B E5 A2 45 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B4F8C  7C 7F 1B 78 */	mr r31, r3
/* 801B4F90  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4F94  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 801B4F98  28 00 00 02 */	cmplwi r0, 2
/* 801B4F9C  40 82 00 08 */	bne lbl_801B4FA4
/* 801B4FA0  48 03 C0 A9 */	bl _move__12dMenu_save_cFv
lbl_801B4FA4:
/* 801B4FA4  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4FA8  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 801B4FAC  28 00 00 03 */	cmplwi r0, 3
/* 801B4FB0  40 82 00 0C */	bne lbl_801B4FBC
/* 801B4FB4  38 00 00 03 */	li r0, 3
/* 801B4FB8  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B4FBC:
/* 801B4FBC  7F E3 FB 78 */	mr r3, r31
/* 801B4FC0  4B E5 A2 0D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B4FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4FC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4FD0  7C 08 03 A6 */	mtlr r0
/* 801B4FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4FD8  4E 80 00 20 */	blr 
