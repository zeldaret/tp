lbl_80CAF2B8:
/* 80CAF2B8  3C C0 80 CB */	lis r6, __global_destructor_chain@ha
/* 80CAF2BC  84 06 0C 18 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CAF2C0  90 05 00 00 */	stw r0, 0(r5)
/* 80CAF2C4  90 85 00 04 */	stw r4, 4(r5)
/* 80CAF2C8  90 65 00 08 */	stw r3, 8(r5)
/* 80CAF2CC  90 A6 00 00 */	stw r5, 0(r6)
/* 80CAF2D0  4E 80 00 20 */	blr 
