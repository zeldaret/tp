lbl_80B78498:
/* 80B78498  3C C0 80 B9 */	lis r6, __global_destructor_chain@ha
/* 80B7849C  84 06 DA 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B784A0  90 05 00 00 */	stw r0, 0(r5)
/* 80B784A4  90 85 00 04 */	stw r4, 4(r5)
/* 80B784A8  90 65 00 08 */	stw r3, 8(r5)
/* 80B784AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80B784B0  4E 80 00 20 */	blr 
