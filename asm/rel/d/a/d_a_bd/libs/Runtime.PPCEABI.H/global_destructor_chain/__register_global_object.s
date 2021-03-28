lbl_804D6BD8:
/* 804D6BD8  3C C0 80 4E */	lis r6, __global_destructor_chain@ha
/* 804D6BDC  84 06 A3 18 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804D6BE0  90 05 00 00 */	stw r0, 0(r5)
/* 804D6BE4  90 85 00 04 */	stw r4, 4(r5)
/* 804D6BE8  90 65 00 08 */	stw r3, 8(r5)
/* 804D6BEC  90 A6 00 00 */	stw r5, 0(r6)
/* 804D6BF0  4E 80 00 20 */	blr 
