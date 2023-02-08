lbl_80BA1C90:
/* 80BA1C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1C94  7C 08 02 A6 */	mflr r0
/* 80BA1C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1C9C  48 00 01 31 */	bl init_modeCloseEvent__14daAmiShutter_cFv
/* 80BA1CA0  38 60 00 01 */	li r3, 1
/* 80BA1CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1CA8  7C 08 03 A6 */	mtlr r0
/* 80BA1CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1CB0  4E 80 00 20 */	blr 
