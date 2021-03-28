lbl_80BC3378:
/* 80BC3378  3C C0 80 BC */	lis r6, __global_destructor_chain@ha
/* 80BC337C  84 06 42 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BC3380  90 05 00 00 */	stw r0, 0(r5)
/* 80BC3384  90 85 00 04 */	stw r4, 4(r5)
/* 80BC3388  90 65 00 08 */	stw r3, 8(r5)
/* 80BC338C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BC3390  4E 80 00 20 */	blr 
