lbl_8030CD7C:
/* 8030CD7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CD80  7C 08 02 A6 */	mflr r0
/* 8030CD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CD88  C0 23 00 08 */	lfs f1, 8(r3)
/* 8030CD8C  81 83 00 00 */	lwz r12, 0(r3)
/* 8030CD90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8030CD94  7D 89 03 A6 */	mtctr r12
/* 8030CD98  4E 80 04 21 */	bctrl 
/* 8030CD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CDA0  7C 08 03 A6 */	mtlr r0
/* 8030CDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CDA8  4E 80 00 20 */	blr 
