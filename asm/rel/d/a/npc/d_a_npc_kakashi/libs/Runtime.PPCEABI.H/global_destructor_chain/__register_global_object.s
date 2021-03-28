lbl_8054B2F8:
/* 8054B2F8  3C C0 80 55 */	lis r6, __global_destructor_chain@ha
/* 8054B2FC  84 06 F1 98 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8054B300  90 05 00 00 */	stw r0, 0(r5)
/* 8054B304  90 85 00 04 */	stw r4, 4(r5)
/* 8054B308  90 65 00 08 */	stw r3, 8(r5)
/* 8054B30C  90 A6 00 00 */	stw r5, 0(r6)
/* 8054B310  4E 80 00 20 */	blr 
