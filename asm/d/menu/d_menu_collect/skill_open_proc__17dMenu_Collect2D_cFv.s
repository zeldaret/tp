lbl_801B588C:
/* 801B588C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5890  7C 08 02 A6 */	mflr r0
/* 801B5894  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B589C  93 C1 00 08 */	stw r30, 8(r1)
/* 801B58A0  7C 7E 1B 78 */	mr r30, r3
/* 801B58A4  80 63 00 08 */	lwz r3, 8(r3)
/* 801B58A8  4B E5 99 25 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B58AC  7C 7F 1B 78 */	mr r31, r3
/* 801B58B0  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 801B58B4  88 03 02 04 */	lbz r0, 0x204(r3)
/* 801B58B8  28 00 00 01 */	cmplwi r0, 1
/* 801B58BC  40 82 00 08 */	bne lbl_801B58C4
/* 801B58C0  48 04 21 81 */	bl _open__13dMenu_Skill_cFv
lbl_801B58C4:
/* 801B58C4  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 801B58C8  88 03 02 04 */	lbz r0, 0x204(r3)
/* 801B58CC  28 00 00 02 */	cmplwi r0, 2
/* 801B58D0  40 82 00 0C */	bne lbl_801B58DC
/* 801B58D4  38 00 00 0E */	li r0, 0xe
/* 801B58D8  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B58DC:
/* 801B58DC  7F E3 FB 78 */	mr r3, r31
/* 801B58E0  4B E5 98 ED */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B58E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B58E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B58EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B58F0  7C 08 03 A6 */	mtlr r0
/* 801B58F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B58F8  4E 80 00 20 */	blr 
