lbl_80B44D00:
/* 80B44D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44D04  7C 08 02 A6 */	mflr r0
/* 80B44D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B44D0C  4B FF E3 79 */	bl create__13daNpc_yamiD_cFv
/* 80B44D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44D14  7C 08 03 A6 */	mtlr r0
/* 80B44D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44D1C  4E 80 00 20 */	blr 
