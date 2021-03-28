lbl_80BE81D8:
/* 80BE81D8  3C C0 80 BF */	lis r6, __global_destructor_chain@ha
/* 80BE81DC  84 06 90 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BE81E0  90 05 00 00 */	stw r0, 0(r5)
/* 80BE81E4  90 85 00 04 */	stw r4, 4(r5)
/* 80BE81E8  90 65 00 08 */	stw r3, 8(r5)
/* 80BE81EC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BE81F0  4E 80 00 20 */	blr 
