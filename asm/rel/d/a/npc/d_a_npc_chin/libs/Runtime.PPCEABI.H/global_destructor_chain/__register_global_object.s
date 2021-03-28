lbl_8098BE98:
/* 8098BE98  3C C0 80 99 */	lis r6, __global_destructor_chain@ha
/* 8098BE9C  84 06 24 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8098BEA0  90 05 00 00 */	stw r0, 0(r5)
/* 8098BEA4  90 85 00 04 */	stw r4, 4(r5)
/* 8098BEA8  90 65 00 08 */	stw r3, 8(r5)
/* 8098BEAC  90 A6 00 00 */	stw r5, 0(r6)
/* 8098BEB0  4E 80 00 20 */	blr 
