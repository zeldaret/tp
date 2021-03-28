lbl_80AE78D8:
/* 80AE78D8  3C C0 80 AF */	lis r6, __global_destructor_chain@ha
/* 80AE78DC  84 06 A7 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AE78E0  90 05 00 00 */	stw r0, 0(r5)
/* 80AE78E4  90 85 00 04 */	stw r4, 4(r5)
/* 80AE78E8  90 65 00 08 */	stw r3, 8(r5)
/* 80AE78EC  90 A6 00 00 */	stw r5, 0(r6)
/* 80AE78F0  4E 80 00 20 */	blr 
