lbl_806C1C78:
/* 806C1C78  3C C0 80 6C */	lis r6, __global_destructor_chain@ha
/* 806C1C7C  84 06 79 20 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806C1C80  90 05 00 00 */	stw r0, 0(r5)
/* 806C1C84  90 85 00 04 */	stw r4, 4(r5)
/* 806C1C88  90 65 00 08 */	stw r3, 8(r5)
/* 806C1C8C  90 A6 00 00 */	stw r5, 0(r6)
/* 806C1C90  4E 80 00 20 */	blr 
