lbl_80D645B8:
/* 80D645B8  3C C0 80 D6 */	lis r6, __global_destructor_chain@ha
/* 80D645BC  84 06 4D F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D645C0  90 05 00 00 */	stw r0, 0(r5)
/* 80D645C4  90 85 00 04 */	stw r4, 4(r5)
/* 80D645C8  90 65 00 08 */	stw r3, 8(r5)
/* 80D645CC  90 A6 00 00 */	stw r5, 0(r6)
/* 80D645D0  4E 80 00 20 */	blr 
