lbl_8059D718:
/* 8059D718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D71C  7C 08 02 A6 */	mflr r0
/* 8059D720  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D724  48 00 00 15 */	bl execute__15daObjYobikusa_cFv
/* 8059D728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D72C  7C 08 03 A6 */	mtlr r0
/* 8059D730  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D734  4E 80 00 20 */	blr 
