lbl_80CCE2D8:
/* 80CCE2D8  3C C0 80 CD */	lis r6, __global_destructor_chain@ha
/* 80CCE2DC  84 06 68 D8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CCE2E0  90 05 00 00 */	stw r0, 0(r5)
/* 80CCE2E4  90 85 00 04 */	stw r4, 4(r5)
/* 80CCE2E8  90 65 00 08 */	stw r3, 8(r5)
/* 80CCE2EC  90 A6 00 00 */	stw r5, 0(r6)
/* 80CCE2F0  4E 80 00 20 */	blr 
