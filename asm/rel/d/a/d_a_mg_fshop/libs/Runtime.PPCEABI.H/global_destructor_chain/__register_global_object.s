lbl_8086BFF8:
/* 8086BFF8  3C C0 80 87 */	lis r6, __global_destructor_chain@ha
/* 8086BFFC  84 06 09 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8086C000  90 05 00 00 */	stw r0, 0(r5)
/* 8086C004  90 85 00 04 */	stw r4, 4(r5)
/* 8086C008  90 65 00 08 */	stw r3, 8(r5)
/* 8086C00C  90 A6 00 00 */	stw r5, 0(r6)
/* 8086C010  4E 80 00 20 */	blr 
