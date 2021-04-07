lbl_809BF44C:
/* 809BF44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BF450  7C 08 02 A6 */	mflr r0
/* 809BF454  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BF458  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BF45C  93 C1 00 08 */	stw r30, 8(r1)
/* 809BF460  7C 7E 1B 78 */	mr r30, r3
/* 809BF464  4B 79 2B B1 */	bl execute__8daNpcF_cFv
/* 809BF468  7C 7F 1B 78 */	mr r31, r3
/* 809BF46C  7F C3 F3 78 */	mr r3, r30
/* 809BF470  48 00 42 3D */	bl setPrtcl__11daNpc_grA_cFv
/* 809BF474  7F E3 FB 78 */	mr r3, r31
/* 809BF478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BF47C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BF480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BF484  7C 08 03 A6 */	mtlr r0
/* 809BF488  38 21 00 10 */	addi r1, r1, 0x10
/* 809BF48C  4E 80 00 20 */	blr 
