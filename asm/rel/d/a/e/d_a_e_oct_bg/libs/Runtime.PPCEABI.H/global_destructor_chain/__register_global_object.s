lbl_80736198:
/* 80736198  3C C0 80 74 */	lis r6, __global_destructor_chain@ha
/* 8073619C  84 06 A0 F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807361A0  90 05 00 00 */	stw r0, 0(r5)
/* 807361A4  90 85 00 04 */	stw r4, 4(r5)
/* 807361A8  90 65 00 08 */	stw r3, 8(r5)
/* 807361AC  90 A6 00 00 */	stw r5, 0(r6)
/* 807361B0  4E 80 00 20 */	blr 
