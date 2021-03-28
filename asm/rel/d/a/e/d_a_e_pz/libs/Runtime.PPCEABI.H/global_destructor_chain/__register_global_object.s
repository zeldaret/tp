lbl_807584F8:
/* 807584F8  3C C0 80 76 */	lis r6, __global_destructor_chain@ha
/* 807584FC  84 06 1D B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80758500  90 05 00 00 */	stw r0, 0(r5)
/* 80758504  90 85 00 04 */	stw r4, 4(r5)
/* 80758508  90 65 00 08 */	stw r3, 8(r5)
/* 8075850C  90 A6 00 00 */	stw r5, 0(r6)
/* 80758510  4E 80 00 20 */	blr 
