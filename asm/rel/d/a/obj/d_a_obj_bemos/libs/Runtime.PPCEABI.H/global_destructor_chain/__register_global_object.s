lbl_80BAE2F8:
/* 80BAE2F8  3C C0 80 BB */	lis r6, __global_destructor_chain@ha
/* 80BAE2FC  84 06 3E E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BAE300  90 05 00 00 */	stw r0, 0(r5)
/* 80BAE304  90 85 00 04 */	stw r4, 4(r5)
/* 80BAE308  90 65 00 08 */	stw r3, 8(r5)
/* 80BAE30C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BAE310  4E 80 00 20 */	blr 
