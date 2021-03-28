lbl_80AC5078:
/* 80AC5078  3C C0 80 AC */	lis r6, __global_destructor_chain@ha
/* 80AC507C  84 06 74 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AC5080  90 05 00 00 */	stw r0, 0(r5)
/* 80AC5084  90 85 00 04 */	stw r4, 4(r5)
/* 80AC5088  90 65 00 08 */	stw r3, 8(r5)
/* 80AC508C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AC5090  4E 80 00 20 */	blr 
