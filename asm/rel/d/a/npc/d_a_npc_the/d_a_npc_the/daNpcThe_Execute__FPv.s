lbl_80AF9904:
/* 80AF9904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF9908  7C 08 02 A6 */	mflr r0
/* 80AF990C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF9910  4B 65 87 05 */	bl execute__8daNpcF_cFv
/* 80AF9914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF9918  7C 08 03 A6 */	mtlr r0
/* 80AF991C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF9920  4E 80 00 20 */	blr 
