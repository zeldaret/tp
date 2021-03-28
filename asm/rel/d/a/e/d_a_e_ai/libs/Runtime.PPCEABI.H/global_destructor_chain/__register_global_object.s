lbl_806790F8:
/* 806790F8  3C C0 80 68 */	lis r6, __global_destructor_chain@ha
/* 806790FC  84 06 C6 90 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80679100  90 05 00 00 */	stw r0, 0(r5)
/* 80679104  90 85 00 04 */	stw r4, 4(r5)
/* 80679108  90 65 00 08 */	stw r3, 8(r5)
/* 8067910C  90 A6 00 00 */	stw r5, 0(r6)
/* 80679110  4E 80 00 20 */	blr 
