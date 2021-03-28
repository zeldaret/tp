lbl_80C5EAF8:
/* 80C5EAF8  3C C0 80 C6 */	lis r6, __global_destructor_chain@ha
/* 80C5EAFC  84 06 F5 18 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C5EB00  90 05 00 00 */	stw r0, 0(r5)
/* 80C5EB04  90 85 00 04 */	stw r4, 4(r5)
/* 80C5EB08  90 65 00 08 */	stw r3, 8(r5)
/* 80C5EB0C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C5EB10  4E 80 00 20 */	blr 
