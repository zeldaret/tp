lbl_8053FEF8:
/* 8053FEF8  3C C0 80 54 */	lis r6, __global_destructor_chain@ha
/* 8053FEFC  84 06 20 E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8053FF00  90 05 00 00 */	stw r0, 0(r5)
/* 8053FF04  90 85 00 04 */	stw r4, 4(r5)
/* 8053FF08  90 65 00 08 */	stw r3, 8(r5)
/* 8053FF0C  90 A6 00 00 */	stw r5, 0(r6)
/* 8053FF10  4E 80 00 20 */	blr 
