lbl_80CCEC88:
/* 80CCEC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCEC8C  7C 08 02 A6 */	mflr r0
/* 80CCEC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCEC94  4B 47 98 99 */	bl execute__8daNpcT_cFv
/* 80CCEC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCEC9C  7C 08 03 A6 */	mtlr r0
/* 80CCECA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCECA4  4E 80 00 20 */	blr 
