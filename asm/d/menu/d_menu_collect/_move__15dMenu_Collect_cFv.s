lbl_801B7A7C:
/* 801B7A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B7A80  7C 08 02 A6 */	mflr r0
/* 801B7A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B7A88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B7A8C  7C 7F 1B 78 */	mr r31, r3
/* 801B7A90  80 63 00 04 */	lwz r3, 4(r3)
/* 801B7A94  4B FF E2 41 */	bl _move__17dMenu_Collect2D_cFv
/* 801B7A98  80 7F 00 04 */	lwz r3, 4(r31)
/* 801B7A9C  88 A3 02 58 */	lbz r5, 0x258(r3)
/* 801B7AA0  88 83 02 57 */	lbz r4, 0x257(r3)
/* 801B7AA4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801B7AA8  4B FF EC 21 */	bl _move__17dMenu_Collect3D_cFUcUc
/* 801B7AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B7AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B7AB4  7C 08 03 A6 */	mtlr r0
/* 801B7AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B7ABC  4E 80 00 20 */	blr 
