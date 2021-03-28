lbl_80C8A298:
/* 80C8A298  3C C0 80 C9 */	lis r6, __global_destructor_chain@ha
/* 80C8A29C  84 06 BB D8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C8A2A0  90 05 00 00 */	stw r0, 0(r5)
/* 80C8A2A4  90 85 00 04 */	stw r4, 4(r5)
/* 80C8A2A8  90 65 00 08 */	stw r3, 8(r5)
/* 80C8A2AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C8A2B0  4E 80 00 20 */	blr 
