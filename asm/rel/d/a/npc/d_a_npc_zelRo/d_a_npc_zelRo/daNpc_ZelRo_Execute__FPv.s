lbl_80B739D0:
/* 80B739D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B739D4  7C 08 02 A6 */	mflr r0
/* 80B739D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B739DC  4B FF EE 3D */	bl Execute__13daNpc_ZelRo_cFv
/* 80B739E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B739E4  7C 08 03 A6 */	mtlr r0
/* 80B739E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B739EC  4E 80 00 20 */	blr 
