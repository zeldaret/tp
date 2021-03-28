lbl_80D5F900:
/* 80D5F900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F904  7C 08 02 A6 */	mflr r0
/* 80D5F908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F90C  4B FF FA 55 */	bl create__16daTagRiverBack_cFv
/* 80D5F910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F914  7C 08 03 A6 */	mtlr r0
/* 80D5F918  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F91C  4E 80 00 20 */	blr 
