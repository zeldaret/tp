lbl_80D0AD7C:
/* 80D0AD7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0AD80  7C 08 02 A6 */	mflr r0
/* 80D0AD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0AD88  4B FF F8 BD */	bl Execute__10daObjTEN_cFv
/* 80D0AD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0AD90  7C 08 03 A6 */	mtlr r0
/* 80D0AD94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0AD98  4E 80 00 20 */	blr 
