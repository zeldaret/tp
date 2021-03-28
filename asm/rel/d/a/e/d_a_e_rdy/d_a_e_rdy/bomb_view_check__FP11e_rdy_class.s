lbl_8076D114:
/* 8076D114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076D118  7C 08 02 A6 */	mflr r0
/* 8076D11C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076D120  38 80 00 01 */	li r4, 1
/* 8076D124  4B FF FA 01 */	bl search_bomb__FP11e_rdy_classi
/* 8076D128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076D12C  7C 08 03 A6 */	mtlr r0
/* 8076D130  38 21 00 10 */	addi r1, r1, 0x10
/* 8076D134  4E 80 00 20 */	blr 
