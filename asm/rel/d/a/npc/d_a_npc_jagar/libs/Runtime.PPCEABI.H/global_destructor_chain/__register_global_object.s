lbl_80A14698:
/* 80A14698  3C C0 80 A2 */	lis r6, __global_destructor_chain@ha
/* 80A1469C  84 06 AD D8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A146A0  90 05 00 00 */	stw r0, 0(r5)
/* 80A146A4  90 85 00 04 */	stw r4, 4(r5)
/* 80A146A8  90 65 00 08 */	stw r3, 8(r5)
/* 80A146AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80A146B0  4E 80 00 20 */	blr 
