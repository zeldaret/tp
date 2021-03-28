lbl_80BDA518:
/* 80BDA518  3C C0 80 BE */	lis r6, __global_destructor_chain@ha
/* 80BDA51C  84 06 C5 60 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BDA520  90 05 00 00 */	stw r0, 0(r5)
/* 80BDA524  90 85 00 04 */	stw r4, 4(r5)
/* 80BDA528  90 65 00 08 */	stw r3, 8(r5)
/* 80BDA52C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BDA530  4E 80 00 20 */	blr 
