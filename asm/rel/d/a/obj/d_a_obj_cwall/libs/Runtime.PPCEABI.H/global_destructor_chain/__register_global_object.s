lbl_80BD69D8:
/* 80BD69D8  3C C0 80 BE */	lis r6, __global_destructor_chain@ha
/* 80BD69DC  84 06 A2 F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BD69E0  90 05 00 00 */	stw r0, 0(r5)
/* 80BD69E4  90 85 00 04 */	stw r4, 4(r5)
/* 80BD69E8  90 65 00 08 */	stw r3, 8(r5)
/* 80BD69EC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BD69F0  4E 80 00 20 */	blr 
