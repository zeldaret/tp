lbl_80D66A98:
/* 80D66A98  3C C0 80 D6 */	lis r6, __global_destructor_chain@ha
/* 80D66A9C  84 06 7D 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D66AA0  90 05 00 00 */	stw r0, 0(r5)
/* 80D66AA4  90 85 00 04 */	stw r4, 4(r5)
/* 80D66AA8  90 65 00 08 */	stw r3, 8(r5)
/* 80D66AAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80D66AB0  4E 80 00 20 */	blr 
