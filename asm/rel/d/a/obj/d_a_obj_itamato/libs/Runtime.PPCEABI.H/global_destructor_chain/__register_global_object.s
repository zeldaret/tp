lbl_80C29478:
/* 80C29478  3C C0 80 C3 */	lis r6, __global_destructor_chain@ha
/* 80C2947C  84 06 AD 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C29480  90 05 00 00 */	stw r0, 0(r5)
/* 80C29484  90 85 00 04 */	stw r4, 4(r5)
/* 80C29488  90 65 00 08 */	stw r3, 8(r5)
/* 80C2948C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C29490  4E 80 00 20 */	blr 
