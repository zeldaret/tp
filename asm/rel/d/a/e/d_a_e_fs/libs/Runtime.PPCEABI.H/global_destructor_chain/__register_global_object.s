lbl_806BBA58:
/* 806BBA58  3C C0 80 6C */	lis r6, __global_destructor_chain@ha
/* 806BBA5C  84 06 E7 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806BBA60  90 05 00 00 */	stw r0, 0(r5)
/* 806BBA64  90 85 00 04 */	stw r4, 4(r5)
/* 806BBA68  90 65 00 08 */	stw r3, 8(r5)
/* 806BBA6C  90 A6 00 00 */	stw r5, 0(r6)
/* 806BBA70  4E 80 00 20 */	blr 
