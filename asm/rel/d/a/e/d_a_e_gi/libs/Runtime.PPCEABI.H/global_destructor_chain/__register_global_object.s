lbl_806CD418:
/* 806CD418  3C C0 80 6D */	lis r6, __global_destructor_chain@ha
/* 806CD41C  84 06 11 20 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806CD420  90 05 00 00 */	stw r0, 0(r5)
/* 806CD424  90 85 00 04 */	stw r4, 4(r5)
/* 806CD428  90 65 00 08 */	stw r3, 8(r5)
/* 806CD42C  90 A6 00 00 */	stw r5, 0(r6)
/* 806CD430  4E 80 00 20 */	blr 
