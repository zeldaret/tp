lbl_806EA598:
/* 806EA598  3C C0 80 6F */	lis r6, __global_destructor_chain@ha
/* 806EA59C  84 06 0B 28 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806EA5A0  90 05 00 00 */	stw r0, 0(r5)
/* 806EA5A4  90 85 00 04 */	stw r4, 4(r5)
/* 806EA5A8  90 65 00 08 */	stw r3, 8(r5)
/* 806EA5AC  90 A6 00 00 */	stw r5, 0(r6)
/* 806EA5B0  4E 80 00 20 */	blr 
