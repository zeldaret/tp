lbl_80BF0698:
/* 80BF0698  3C C0 80 BF */	lis r6, __global_destructor_chain@ha
/* 80BF069C  84 06 1F 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BF06A0  90 05 00 00 */	stw r0, 0(r5)
/* 80BF06A4  90 85 00 04 */	stw r4, 4(r5)
/* 80BF06A8  90 65 00 08 */	stw r3, 8(r5)
/* 80BF06AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BF06B0  4E 80 00 20 */	blr 
