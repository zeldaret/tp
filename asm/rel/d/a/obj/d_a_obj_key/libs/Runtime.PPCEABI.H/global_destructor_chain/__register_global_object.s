lbl_80C3F398:
/* 80C3F398  3C C0 80 C4 */	lis r6, __global_destructor_chain@ha
/* 80C3F39C  84 06 11 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C3F3A0  90 05 00 00 */	stw r0, 0(r5)
/* 80C3F3A4  90 85 00 04 */	stw r4, 4(r5)
/* 80C3F3A8  90 65 00 08 */	stw r3, 8(r5)
/* 80C3F3AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C3F3B0  4E 80 00 20 */	blr 
