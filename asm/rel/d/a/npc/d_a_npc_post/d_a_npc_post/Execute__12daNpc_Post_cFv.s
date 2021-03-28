lbl_80AA9668:
/* 80AA9668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA966C  7C 08 02 A6 */	mflr r0
/* 80AA9670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA9674  4B 69 EE B8 */	b execute__8daNpcT_cFv
/* 80AA9678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA967C  7C 08 03 A6 */	mtlr r0
/* 80AA9680  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9684  4E 80 00 20 */	blr 
