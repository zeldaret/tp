lbl_80CECA1C:
/* 80CECA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECA20  7C 08 02 A6 */	mflr r0
/* 80CECA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECA28  4B FF CE 19 */	bl create__12daObjStone_cFv
/* 80CECA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CECA30  7C 08 03 A6 */	mtlr r0
/* 80CECA34  38 21 00 10 */	addi r1, r1, 0x10
/* 80CECA38  4E 80 00 20 */	blr 
