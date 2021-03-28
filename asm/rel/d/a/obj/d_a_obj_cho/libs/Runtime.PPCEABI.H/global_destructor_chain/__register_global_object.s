lbl_80BCA298:
/* 80BCA298  3C C0 80 BD */	lis r6, __global_destructor_chain@ha
/* 80BCA29C  84 06 C7 48 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BCA2A0  90 05 00 00 */	stw r0, 0(r5)
/* 80BCA2A4  90 85 00 04 */	stw r4, 4(r5)
/* 80BCA2A8  90 65 00 08 */	stw r3, 8(r5)
/* 80BCA2AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BCA2B0  4E 80 00 20 */	blr 
