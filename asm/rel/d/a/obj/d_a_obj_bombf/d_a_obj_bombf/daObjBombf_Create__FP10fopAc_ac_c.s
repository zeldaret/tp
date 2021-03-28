lbl_80BBAB9C:
/* 80BBAB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBABA0  7C 08 02 A6 */	mflr r0
/* 80BBABA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBABA8  4B FF FE DD */	bl create__12daObjBombf_cFv
/* 80BBABAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBABB0  7C 08 03 A6 */	mtlr r0
/* 80BBABB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBABB8  4E 80 00 20 */	blr 
