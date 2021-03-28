lbl_80B483C4:
/* 80B483C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B483C8  7C 08 02 A6 */	mflr r0
/* 80B483CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B483D0  4B FF EA 2D */	bl Draw__13daNpc_yamiS_cFv
/* 80B483D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B483D8  7C 08 03 A6 */	mtlr r0
/* 80B483DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B483E0  4E 80 00 20 */	blr 
