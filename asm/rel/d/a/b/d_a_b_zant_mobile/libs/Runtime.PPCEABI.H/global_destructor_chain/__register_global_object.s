lbl_80650718:
/* 80650718  3C C0 80 65 */	lis r6, __global_destructor_chain@ha
/* 8065071C  84 06 29 20 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80650720  90 05 00 00 */	stw r0, 0(r5)
/* 80650724  90 85 00 04 */	stw r4, 4(r5)
/* 80650728  90 65 00 08 */	stw r3, 8(r5)
/* 8065072C  90 A6 00 00 */	stw r5, 0(r6)
/* 80650730  4E 80 00 20 */	blr 
