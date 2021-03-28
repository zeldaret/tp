lbl_8072C558:
/* 8072C558  3C C0 80 73 */	lis r6, __global_destructor_chain@ha
/* 8072C55C  84 06 5F F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8072C560  90 05 00 00 */	stw r0, 0(r5)
/* 8072C564  90 85 00 04 */	stw r4, 4(r5)
/* 8072C568  90 65 00 08 */	stw r3, 8(r5)
/* 8072C56C  90 A6 00 00 */	stw r5, 0(r6)
/* 8072C570  4E 80 00 20 */	blr 
