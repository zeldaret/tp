lbl_806558D8:
/* 806558D8  3C C0 80 65 */	lis r6, __global_destructor_chain@ha
/* 806558DC  84 06 68 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806558E0  90 05 00 00 */	stw r0, 0(r5)
/* 806558E4  90 85 00 04 */	stw r4, 4(r5)
/* 806558E8  90 65 00 08 */	stw r3, 8(r5)
/* 806558EC  90 A6 00 00 */	stw r5, 0(r6)
/* 806558F0  4E 80 00 20 */	blr 
