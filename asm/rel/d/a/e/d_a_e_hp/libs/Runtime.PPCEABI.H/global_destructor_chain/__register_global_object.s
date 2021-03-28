lbl_806E5D78:
/* 806E5D78  3C C0 80 6F */	lis r6, __global_destructor_chain@ha
/* 806E5D7C  84 06 A4 E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806E5D80  90 05 00 00 */	stw r0, 0(r5)
/* 806E5D84  90 85 00 04 */	stw r4, 4(r5)
/* 806E5D88  90 65 00 08 */	stw r3, 8(r5)
/* 806E5D8C  90 A6 00 00 */	stw r5, 0(r6)
/* 806E5D90  4E 80 00 20 */	blr 
