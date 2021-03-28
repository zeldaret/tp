lbl_80AC74D8:
/* 80AC74D8  3C C0 80 AD */	lis r6, __global_destructor_chain@ha
/* 80AC74DC  84 06 95 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AC74E0  90 05 00 00 */	stw r0, 0(r5)
/* 80AC74E4  90 85 00 04 */	stw r4, 4(r5)
/* 80AC74E8  90 65 00 08 */	stw r3, 8(r5)
/* 80AC74EC  90 A6 00 00 */	stw r5, 0(r6)
/* 80AC74F0  4E 80 00 20 */	blr 
