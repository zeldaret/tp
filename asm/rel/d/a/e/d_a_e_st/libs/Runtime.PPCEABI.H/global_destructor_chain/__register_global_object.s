lbl_8079DD78:
/* 8079DD78  3C C0 80 7A */	lis r6, __global_destructor_chain@ha
/* 8079DD7C  84 06 6D 98 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8079DD80  90 05 00 00 */	stw r0, 0(r5)
/* 8079DD84  90 85 00 04 */	stw r4, 4(r5)
/* 8079DD88  90 65 00 08 */	stw r3, 8(r5)
/* 8079DD8C  90 A6 00 00 */	stw r5, 0(r6)
/* 8079DD90  4E 80 00 20 */	blr 
