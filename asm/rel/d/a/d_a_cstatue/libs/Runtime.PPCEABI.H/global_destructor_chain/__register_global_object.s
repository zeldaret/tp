lbl_80663638:
/* 80663638  3C C0 80 66 */	lis r6, __global_destructor_chain@ha
/* 8066363C  84 06 7B 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80663640  90 05 00 00 */	stw r0, 0(r5)
/* 80663644  90 85 00 04 */	stw r4, 4(r5)
/* 80663648  90 65 00 08 */	stw r3, 8(r5)
/* 8066364C  90 A6 00 00 */	stw r5, 0(r6)
/* 80663650  4E 80 00 20 */	blr 
