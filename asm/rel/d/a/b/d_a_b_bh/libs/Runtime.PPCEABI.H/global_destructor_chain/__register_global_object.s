lbl_805AE1F8:
/* 805AE1F8  3C C0 80 5B */	lis r6, __global_destructor_chain@ha
/* 805AE1FC  84 06 33 A8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805AE200  90 05 00 00 */	stw r0, 0(r5)
/* 805AE204  90 85 00 04 */	stw r4, 4(r5)
/* 805AE208  90 65 00 08 */	stw r3, 8(r5)
/* 805AE20C  90 A6 00 00 */	stw r5, 0(r6)
/* 805AE210  4E 80 00 20 */	blr 
