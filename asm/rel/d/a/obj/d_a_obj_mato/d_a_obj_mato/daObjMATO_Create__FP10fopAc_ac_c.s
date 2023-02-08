lbl_80C91D04:
/* 80C91D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C91D08  7C 08 02 A6 */	mflr r0
/* 80C91D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91D10  48 00 0A 9D */	bl create__11daObjMATO_cFv
/* 80C91D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91D18  7C 08 03 A6 */	mtlr r0
/* 80C91D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C91D20  4E 80 00 20 */	blr 
