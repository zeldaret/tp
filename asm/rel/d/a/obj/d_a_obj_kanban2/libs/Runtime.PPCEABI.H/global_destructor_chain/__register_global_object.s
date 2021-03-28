lbl_805816F8:
/* 805816F8  3C C0 80 58 */	lis r6, __global_destructor_chain@ha
/* 805816FC  84 06 5C 70 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80581700  90 05 00 00 */	stw r0, 0(r5)
/* 80581704  90 85 00 04 */	stw r4, 4(r5)
/* 80581708  90 65 00 08 */	stw r3, 8(r5)
/* 8058170C  90 A6 00 00 */	stw r5, 0(r6)
/* 80581710  4E 80 00 20 */	blr 
