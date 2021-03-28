lbl_80C72418:
/* 80C72418  3C C0 80 C7 */	lis r6, __global_destructor_chain@ha
/* 80C7241C  84 06 32 C0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C72420  90 05 00 00 */	stw r0, 0(r5)
/* 80C72424  90 85 00 04 */	stw r4, 4(r5)
/* 80C72428  90 65 00 08 */	stw r3, 8(r5)
/* 80C7242C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C72430  4E 80 00 20 */	blr 
