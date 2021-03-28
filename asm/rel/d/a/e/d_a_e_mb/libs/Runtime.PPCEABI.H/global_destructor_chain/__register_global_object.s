lbl_807060F8:
/* 807060F8  3C C0 80 71 */	lis r6, __global_destructor_chain@ha
/* 807060FC  84 06 8B E8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80706100  90 05 00 00 */	stw r0, 0(r5)
/* 80706104  90 85 00 04 */	stw r4, 4(r5)
/* 80706108  90 65 00 08 */	stw r3, 8(r5)
/* 8070610C  90 A6 00 00 */	stw r5, 0(r6)
/* 80706110  4E 80 00 20 */	blr 
