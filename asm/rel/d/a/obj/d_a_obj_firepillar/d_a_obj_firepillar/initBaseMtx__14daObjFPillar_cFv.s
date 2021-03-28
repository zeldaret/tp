lbl_80BE9118:
/* 80BE9118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE911C  7C 08 02 A6 */	mflr r0
/* 80BE9120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9124  48 00 00 15 */	bl setBaseMtx__14daObjFPillar_cFv
/* 80BE9128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE912C  7C 08 03 A6 */	mtlr r0
/* 80BE9130  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9134  4E 80 00 20 */	blr 
