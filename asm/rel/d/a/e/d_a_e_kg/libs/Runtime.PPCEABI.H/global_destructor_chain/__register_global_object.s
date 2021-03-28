lbl_806F7E78:
/* 806F7E78  3C C0 80 70 */	lis r6, __global_destructor_chain@ha
/* 806F7E7C  84 06 A5 E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806F7E80  90 05 00 00 */	stw r0, 0(r5)
/* 806F7E84  90 85 00 04 */	stw r4, 4(r5)
/* 806F7E88  90 65 00 08 */	stw r3, 8(r5)
/* 806F7E8C  90 A6 00 00 */	stw r5, 0(r6)
/* 806F7E90  4E 80 00 20 */	blr 
