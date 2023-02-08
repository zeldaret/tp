lbl_80B48364:
/* 80B48364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48368  7C 08 02 A6 */	mflr r0
/* 80B4836C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48370  4B FF E3 35 */	bl create__13daNpc_yamiS_cFv
/* 80B48374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48378  7C 08 03 A6 */	mtlr r0
/* 80B4837C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B48380  4E 80 00 20 */	blr 
