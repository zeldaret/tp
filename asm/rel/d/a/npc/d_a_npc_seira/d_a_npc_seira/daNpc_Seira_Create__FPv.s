lbl_80ACECE8:
/* 80ACECE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACECEC  7C 08 02 A6 */	mflr r0
/* 80ACECF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACECF4  4B FF CC 25 */	bl create__13daNpc_Seira_cFv
/* 80ACECF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACECFC  7C 08 03 A6 */	mtlr r0
/* 80ACED00  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACED04  4E 80 00 20 */	blr 
