lbl_806E0378:
/* 806E0378  3C C0 80 6E */	lis r6, __global_destructor_chain@ha
/* 806E037C  84 06 5B D0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806E0380  90 05 00 00 */	stw r0, 0(r5)
/* 806E0384  90 85 00 04 */	stw r4, 4(r5)
/* 806E0388  90 65 00 08 */	stw r3, 8(r5)
/* 806E038C  90 A6 00 00 */	stw r5, 0(r6)
/* 806E0390  4E 80 00 20 */	blr 
