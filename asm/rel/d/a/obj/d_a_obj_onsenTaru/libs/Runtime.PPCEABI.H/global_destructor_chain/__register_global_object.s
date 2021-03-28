lbl_80CA8558:
/* 80CA8558  3C C0 80 CB */	lis r6, __global_destructor_chain@ha
/* 80CA855C  84 06 9D E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CA8560  90 05 00 00 */	stw r0, 0(r5)
/* 80CA8564  90 85 00 04 */	stw r4, 4(r5)
/* 80CA8568  90 65 00 08 */	stw r3, 8(r5)
/* 80CA856C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CA8570  4E 80 00 20 */	blr 
