lbl_806AD898:
/* 806AD898  3C C0 80 6B */	lis r6, __global_destructor_chain@ha
/* 806AD89C  84 06 62 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806AD8A0  90 05 00 00 */	stw r0, 0(r5)
/* 806AD8A4  90 85 00 04 */	stw r4, 4(r5)
/* 806AD8A8  90 65 00 08 */	stw r3, 8(r5)
/* 806AD8AC  90 A6 00 00 */	stw r5, 0(r6)
/* 806AD8B0  4E 80 00 20 */	blr 
