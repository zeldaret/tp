lbl_8070B6E0:
/* 8070B6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070B6E4  7C 08 02 A6 */	mflr r0
/* 8070B6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070B6EC  38 80 00 01 */	li r4, 1
/* 8070B6F0  4B FF FB 79 */	bl search_bomb__FP10e_mf_classi
/* 8070B6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070B6F8  7C 08 03 A6 */	mtlr r0
/* 8070B6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8070B700  4E 80 00 20 */	blr 
