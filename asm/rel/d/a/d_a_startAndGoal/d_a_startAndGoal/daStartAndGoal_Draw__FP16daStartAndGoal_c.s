lbl_80D4DDA0:
/* 80D4DDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DDA4  7C 08 02 A6 */	mflr r0
/* 80D4DDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DDAC  4B FF FF 49 */	bl Draw__16daStartAndGoal_cFv
/* 80D4DDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DDB4  7C 08 03 A6 */	mtlr r0
/* 80D4DDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DDBC  4E 80 00 20 */	blr 
