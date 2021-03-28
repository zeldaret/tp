lbl_80C2ADF8:
/* 80C2ADF8  3C C0 80 C3 */	lis r6, __global_destructor_chain@ha
/* 80C2ADFC  84 06 E2 E8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C2AE00  90 05 00 00 */	stw r0, 0(r5)
/* 80C2AE04  90 85 00 04 */	stw r4, 4(r5)
/* 80C2AE08  90 65 00 08 */	stw r3, 8(r5)
/* 80C2AE0C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C2AE10  4E 80 00 20 */	blr 
