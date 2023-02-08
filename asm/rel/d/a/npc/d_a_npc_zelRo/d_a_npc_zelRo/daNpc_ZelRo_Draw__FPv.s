lbl_80B739F0:
/* 80B739F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B739F4  7C 08 02 A6 */	mflr r0
/* 80B739F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B739FC  4B FF EE 3D */	bl Draw__13daNpc_ZelRo_cFv
/* 80B73A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73A04  7C 08 03 A6 */	mtlr r0
/* 80B73A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73A0C  4E 80 00 20 */	blr 
