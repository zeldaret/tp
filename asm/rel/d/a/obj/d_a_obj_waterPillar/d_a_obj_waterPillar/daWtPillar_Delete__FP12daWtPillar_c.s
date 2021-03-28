lbl_80D2DEF4:
/* 80D2DEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2DEF8  7C 08 02 A6 */	mflr r0
/* 80D2DEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2DF00  4B FF FF 85 */	bl _delete__12daWtPillar_cFv
/* 80D2DF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2DF08  7C 08 03 A6 */	mtlr r0
/* 80D2DF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2DF10  4E 80 00 20 */	blr 
