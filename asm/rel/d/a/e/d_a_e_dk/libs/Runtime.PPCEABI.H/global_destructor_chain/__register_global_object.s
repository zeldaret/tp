lbl_806AA178:
/* 806AA178  3C C0 80 6B */	lis r6, __global_destructor_chain@ha
/* 806AA17C  84 06 D7 F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806AA180  90 05 00 00 */	stw r0, 0(r5)
/* 806AA184  90 85 00 04 */	stw r4, 4(r5)
/* 806AA188  90 65 00 08 */	stw r3, 8(r5)
/* 806AA18C  90 A6 00 00 */	stw r5, 0(r6)
/* 806AA190  4E 80 00 20 */	blr 
