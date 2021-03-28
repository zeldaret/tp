lbl_80CA0538:
/* 80CA0538  3C C0 80 CA */	lis r6, __global_destructor_chain@ha
/* 80CA053C  84 06 34 90 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CA0540  90 05 00 00 */	stw r0, 0(r5)
/* 80CA0544  90 85 00 04 */	stw r4, 4(r5)
/* 80CA0548  90 65 00 08 */	stw r3, 8(r5)
/* 80CA054C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CA0550  4E 80 00 20 */	blr 
