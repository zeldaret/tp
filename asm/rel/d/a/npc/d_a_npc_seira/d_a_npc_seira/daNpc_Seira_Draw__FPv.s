lbl_80ACED48:
/* 80ACED48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACED4C  7C 08 02 A6 */	mflr r0
/* 80ACED50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACED54  4B FF D4 C9 */	bl Draw__13daNpc_Seira_cFv
/* 80ACED58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACED5C  7C 08 03 A6 */	mtlr r0
/* 80ACED60  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACED64  4E 80 00 20 */	blr 
