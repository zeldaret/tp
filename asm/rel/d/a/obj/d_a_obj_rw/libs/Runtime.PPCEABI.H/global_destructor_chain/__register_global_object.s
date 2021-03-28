lbl_80CC2918:
/* 80CC2918  3C C0 80 CC */	lis r6, __global_destructor_chain@ha
/* 80CC291C  84 06 3C 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CC2920  90 05 00 00 */	stw r0, 0(r5)
/* 80CC2924  90 85 00 04 */	stw r4, 4(r5)
/* 80CC2928  90 65 00 08 */	stw r3, 8(r5)
/* 80CC292C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CC2930  4E 80 00 20 */	blr 
