lbl_80D4DD80:
/* 80D4DD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DD84  7C 08 02 A6 */	mflr r0
/* 80D4DD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DD8C  4B FF FE C5 */	bl Execute__16daStartAndGoal_cFv
/* 80D4DD90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DD94  7C 08 03 A6 */	mtlr r0
/* 80D4DD98  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DD9C  4E 80 00 20 */	blr 
