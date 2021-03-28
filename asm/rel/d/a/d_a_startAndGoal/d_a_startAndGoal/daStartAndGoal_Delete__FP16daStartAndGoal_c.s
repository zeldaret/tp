lbl_80D4DDC8:
/* 80D4DDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DDCC  7C 08 02 A6 */	mflr r0
/* 80D4DDD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DDD4  4B FF FF 29 */	bl Delete__16daStartAndGoal_cFv
/* 80D4DDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DDDC  7C 08 03 A6 */	mtlr r0
/* 80D4DDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DDE4  4E 80 00 20 */	blr 
