lbl_80CFDE04:
/* 80CFDE04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDE08  7C 08 02 A6 */	mflr r0
/* 80CFDE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDE10  4B FF F8 6D */	bl create__12daObjSword_cFv
/* 80CFDE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDE18  7C 08 03 A6 */	mtlr r0
/* 80CFDE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDE20  4E 80 00 20 */	blr 
