lbl_80C31A78:
/* 80C31A78  3C C0 80 C3 */	lis r6, __global_destructor_chain@ha
/* 80C31A7C  84 06 3E F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C31A80  90 05 00 00 */	stw r0, 0(r5)
/* 80C31A84  90 85 00 04 */	stw r4, 4(r5)
/* 80C31A88  90 65 00 08 */	stw r3, 8(r5)
/* 80C31A8C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C31A90  4E 80 00 20 */	blr 
