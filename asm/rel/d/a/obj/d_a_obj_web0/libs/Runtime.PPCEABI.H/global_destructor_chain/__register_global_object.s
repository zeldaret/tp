lbl_80D344B8:
/* 80D344B8  3C C0 80 D3 */	lis r6, __global_destructor_chain@ha
/* 80D344BC  84 06 52 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D344C0  90 05 00 00 */	stw r0, 0(r5)
/* 80D344C4  90 85 00 04 */	stw r4, 4(r5)
/* 80D344C8  90 65 00 08 */	stw r3, 8(r5)
/* 80D344CC  90 A6 00 00 */	stw r5, 0(r6)
/* 80D344D0  4E 80 00 20 */	blr 
