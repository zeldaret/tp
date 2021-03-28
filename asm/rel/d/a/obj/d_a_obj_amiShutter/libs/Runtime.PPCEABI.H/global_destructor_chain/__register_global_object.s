lbl_80BA1458:
/* 80BA1458  3C C0 80 BA */	lis r6, __global_destructor_chain@ha
/* 80BA145C  84 06 25 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BA1460  90 05 00 00 */	stw r0, 0(r5)
/* 80BA1464  90 85 00 04 */	stw r4, 4(r5)
/* 80BA1468  90 65 00 08 */	stw r3, 8(r5)
/* 80BA146C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BA1470  4E 80 00 20 */	blr 
