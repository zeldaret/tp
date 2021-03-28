lbl_80C71E80:
/* 80C71E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71E84  7C 08 02 A6 */	mflr r0
/* 80C71E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71E8C  4B FF EF B5 */	bl create__17daLv6ChangeGate_cFv
/* 80C71E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C71E94  7C 08 03 A6 */	mtlr r0
/* 80C71E98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71E9C  4E 80 00 20 */	blr 
