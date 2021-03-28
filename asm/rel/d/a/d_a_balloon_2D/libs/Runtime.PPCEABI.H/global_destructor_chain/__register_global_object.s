lbl_80653458:
/* 80653458  3C C0 80 65 */	lis r6, __global_destructor_chain@ha
/* 8065345C  84 06 57 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80653460  90 05 00 00 */	stw r0, 0(r5)
/* 80653464  90 85 00 04 */	stw r4, 4(r5)
/* 80653468  90 65 00 08 */	stw r3, 8(r5)
/* 8065346C  90 A6 00 00 */	stw r5, 0(r6)
/* 80653470  4E 80 00 20 */	blr 
