lbl_80A26158:
/* 80A26158  3C C0 80 A3 */	lis r6, __global_destructor_chain@ha
/* 80A2615C  84 06 A7 98 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A26160  90 05 00 00 */	stw r0, 0(r5)
/* 80A26164  90 85 00 04 */	stw r4, 4(r5)
/* 80A26168  90 65 00 08 */	stw r3, 8(r5)
/* 80A2616C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A26170  4E 80 00 20 */	blr 
