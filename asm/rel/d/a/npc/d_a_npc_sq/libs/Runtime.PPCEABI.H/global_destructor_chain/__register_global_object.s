lbl_80AF5F78:
/* 80AF5F78  3C C0 80 AF */	lis r6, __global_destructor_chain@ha
/* 80AF5F7C  84 06 75 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AF5F80  90 05 00 00 */	stw r0, 0(r5)
/* 80AF5F84  90 85 00 04 */	stw r4, 4(r5)
/* 80AF5F88  90 65 00 08 */	stw r3, 8(r5)
/* 80AF5F8C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AF5F90  4E 80 00 20 */	blr 
