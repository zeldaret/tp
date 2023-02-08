lbl_806BAF2C:
/* 806BAF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BAF30  7C 08 02 A6 */	mflr r0
/* 806BAF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BAF38  4B FF F7 B5 */	bl Execute__8daE_FK_cFv
/* 806BAF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BAF40  7C 08 03 A6 */	mtlr r0
/* 806BAF44  38 21 00 10 */	addi r1, r1, 0x10
/* 806BAF48  4E 80 00 20 */	blr 
