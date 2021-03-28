lbl_805C7AB8:
/* 805C7AB8  3C C0 80 5D */	lis r6, __global_destructor_chain@ha
/* 805C7ABC  84 06 B0 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805C7AC0  90 05 00 00 */	stw r0, 0(r5)
/* 805C7AC4  90 85 00 04 */	stw r4, 4(r5)
/* 805C7AC8  90 65 00 08 */	stw r3, 8(r5)
/* 805C7ACC  90 A6 00 00 */	stw r5, 0(r6)
/* 805C7AD0  4E 80 00 20 */	blr 
