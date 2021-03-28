lbl_80D385D0:
/* 80D385D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D385D4  7C 08 02 A6 */	mflr r0
/* 80D385D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D385DC  4B FF F9 91 */	bl draw__13daWindStone_cFv
/* 80D385E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D385E4  7C 08 03 A6 */	mtlr r0
/* 80D385E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D385EC  4E 80 00 20 */	blr 
