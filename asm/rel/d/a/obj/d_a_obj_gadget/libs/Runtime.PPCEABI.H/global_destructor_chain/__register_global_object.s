lbl_80BF2CB8:
/* 80BF2CB8  3C C0 80 BF */	lis r6, __global_destructor_chain@ha
/* 80BF2CBC  84 06 4B 90 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BF2CC0  90 05 00 00 */	stw r0, 0(r5)
/* 80BF2CC4  90 85 00 04 */	stw r4, 4(r5)
/* 80BF2CC8  90 65 00 08 */	stw r3, 8(r5)
/* 80BF2CCC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BF2CD0  4E 80 00 20 */	blr 
