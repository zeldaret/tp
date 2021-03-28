lbl_80AFC6F8:
/* 80AFC6F8  3C C0 80 B0 */	lis r6, __global_destructor_chain@ha
/* 80AFC6FC  84 06 13 08 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AFC700  90 05 00 00 */	stw r0, 0(r5)
/* 80AFC704  90 85 00 04 */	stw r4, 4(r5)
/* 80AFC708  90 65 00 08 */	stw r3, 8(r5)
/* 80AFC70C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AFC710  4E 80 00 20 */	blr 
