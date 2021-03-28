lbl_80D35338:
/* 80D35338  3C C0 80 D3 */	lis r6, __global_destructor_chain@ha
/* 80D3533C  84 06 61 F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D35340  90 05 00 00 */	stw r0, 0(r5)
/* 80D35344  90 85 00 04 */	stw r4, 4(r5)
/* 80D35348  90 65 00 08 */	stw r3, 8(r5)
/* 80D3534C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D35350  4E 80 00 20 */	blr 
