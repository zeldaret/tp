lbl_80AEF518:
/* 80AEF518  3C C0 80 AF */	lis r6, __global_destructor_chain@ha
/* 80AEF51C  84 06 2A E8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AEF520  90 05 00 00 */	stw r0, 0(r5)
/* 80AEF524  90 85 00 04 */	stw r4, 4(r5)
/* 80AEF528  90 65 00 08 */	stw r3, 8(r5)
/* 80AEF52C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AEF530  4E 80 00 20 */	blr 
