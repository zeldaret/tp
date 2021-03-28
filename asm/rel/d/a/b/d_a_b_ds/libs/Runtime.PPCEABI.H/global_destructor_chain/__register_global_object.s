lbl_805CB1B8:
/* 805CB1B8  3C C0 80 5E */	lis r6, __global_destructor_chain@ha
/* 805CB1BC  84 06 DA 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805CB1C0  90 05 00 00 */	stw r0, 0(r5)
/* 805CB1C4  90 85 00 04 */	stw r4, 4(r5)
/* 805CB1C8  90 65 00 08 */	stw r3, 8(r5)
/* 805CB1CC  90 A6 00 00 */	stw r5, 0(r6)
/* 805CB1D0  4E 80 00 20 */	blr 
