lbl_807F82D8:
/* 807F82D8  3C C0 80 80 */	lis r6, __global_destructor_chain@ha
/* 807F82DC  84 06 D0 18 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807F82E0  90 05 00 00 */	stw r0, 0(r5)
/* 807F82E4  90 85 00 04 */	stw r4, 4(r5)
/* 807F82E8  90 65 00 08 */	stw r3, 8(r5)
/* 807F82EC  90 A6 00 00 */	stw r5, 0(r6)
/* 807F82F0  4E 80 00 20 */	blr 
