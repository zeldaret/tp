lbl_8070B704:
/* 8070B704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070B708  7C 08 02 A6 */	mflr r0
/* 8070B70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070B710  38 80 00 00 */	li r4, 0
/* 8070B714  4B FF FB 55 */	bl search_bomb__FP10e_mf_classi
/* 8070B718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070B71C  7C 08 03 A6 */	mtlr r0
/* 8070B720  38 21 00 10 */	addi r1, r1, 0x10
/* 8070B724  4E 80 00 20 */	blr 
