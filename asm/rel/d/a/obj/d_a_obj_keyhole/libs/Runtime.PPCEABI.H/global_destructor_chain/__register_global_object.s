lbl_80C411D8:
/* 80C411D8  3C C0 80 C4 */	lis r6, __global_destructor_chain@ha
/* 80C411DC  84 06 3C A0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C411E0  90 05 00 00 */	stw r0, 0(r5)
/* 80C411E4  90 85 00 04 */	stw r4, 4(r5)
/* 80C411E8  90 65 00 08 */	stw r3, 8(r5)
/* 80C411EC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C411F0  4E 80 00 20 */	blr 
