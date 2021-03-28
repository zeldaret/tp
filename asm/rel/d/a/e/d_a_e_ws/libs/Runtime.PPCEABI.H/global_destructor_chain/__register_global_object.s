lbl_807E3998:
/* 807E3998  3C C0 80 7E */	lis r6, __global_destructor_chain@ha
/* 807E399C  84 06 75 B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807E39A0  90 05 00 00 */	stw r0, 0(r5)
/* 807E39A4  90 85 00 04 */	stw r4, 4(r5)
/* 807E39A8  90 65 00 08 */	stw r3, 8(r5)
/* 807E39AC  90 A6 00 00 */	stw r5, 0(r6)
/* 807E39B0  4E 80 00 20 */	blr 
