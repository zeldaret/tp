lbl_80B46DDC:
/* 80B46DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46DE0  7C 08 02 A6 */	mflr r0
/* 80B46DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46DE8  4B 60 17 45 */	bl execute__8daNpcT_cFv
/* 80B46DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B46DF0  7C 08 03 A6 */	mtlr r0
/* 80B46DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B46DF8  4E 80 00 20 */	blr 
