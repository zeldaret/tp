lbl_8059B478:
/* 8059B478  3C C0 80 5A */	lis r6, __global_destructor_chain@ha
/* 8059B47C  84 06 C8 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8059B480  90 05 00 00 */	stw r0, 0(r5)
/* 8059B484  90 85 00 04 */	stw r4, 4(r5)
/* 8059B488  90 65 00 08 */	stw r3, 8(r5)
/* 8059B48C  90 A6 00 00 */	stw r5, 0(r6)
/* 8059B490  4E 80 00 20 */	blr 
