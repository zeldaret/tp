lbl_80C73378:
/* 80C73378  3C C0 80 C7 */	lis r6, __global_destructor_chain@ha
/* 80C7337C  84 06 3D E8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C73380  90 05 00 00 */	stw r0, 0(r5)
/* 80C73384  90 85 00 04 */	stw r4, 4(r5)
/* 80C73388  90 65 00 08 */	stw r3, 8(r5)
/* 80C7338C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C73390  4E 80 00 20 */	blr 
