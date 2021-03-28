lbl_80CB19F8:
/* 80CB19F8  3C C0 80 CB */	lis r6, __global_destructor_chain@ha
/* 80CB19FC  84 06 28 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CB1A00  90 05 00 00 */	stw r0, 0(r5)
/* 80CB1A04  90 85 00 04 */	stw r4, 4(r5)
/* 80CB1A08  90 65 00 08 */	stw r3, 8(r5)
/* 80CB1A0C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CB1A10  4E 80 00 20 */	blr 
