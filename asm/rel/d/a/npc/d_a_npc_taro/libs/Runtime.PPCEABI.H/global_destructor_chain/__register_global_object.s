lbl_80565E18:
/* 80565E18  3C C0 80 57 */	lis r6, __global_destructor_chain@ha
/* 80565E1C  84 06 35 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80565E20  90 05 00 00 */	stw r0, 0(r5)
/* 80565E24  90 85 00 04 */	stw r4, 4(r5)
/* 80565E28  90 65 00 08 */	stw r3, 8(r5)
/* 80565E2C  90 A6 00 00 */	stw r5, 0(r6)
/* 80565E30  4E 80 00 20 */	blr 
