lbl_80ACB758:
/* 80ACB758  3C C0 80 AD */	lis r6, __global_destructor_chain@ha
/* 80ACB75C  84 06 0A F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80ACB760  90 05 00 00 */	stw r0, 0(r5)
/* 80ACB764  90 85 00 04 */	stw r4, 4(r5)
/* 80ACB768  90 65 00 08 */	stw r3, 8(r5)
/* 80ACB76C  90 A6 00 00 */	stw r5, 0(r6)
/* 80ACB770  4E 80 00 20 */	blr 
