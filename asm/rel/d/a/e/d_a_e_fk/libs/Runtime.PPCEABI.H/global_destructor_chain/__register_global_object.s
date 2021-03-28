lbl_806B9318:
/* 806B9318  3C C0 80 6C */	lis r6, __global_destructor_chain@ha
/* 806B931C  84 06 B8 C8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806B9320  90 05 00 00 */	stw r0, 0(r5)
/* 806B9324  90 85 00 04 */	stw r4, 4(r5)
/* 806B9328  90 65 00 08 */	stw r3, 8(r5)
/* 806B932C  90 A6 00 00 */	stw r5, 0(r6)
/* 806B9330  4E 80 00 20 */	blr 
