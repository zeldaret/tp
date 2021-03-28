lbl_80C5FB78:
/* 80C5FB78  3C C0 80 C6 */	lis r6, __global_destructor_chain@ha
/* 80C5FB7C  84 06 09 B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C5FB80  90 05 00 00 */	stw r0, 0(r5)
/* 80C5FB84  90 85 00 04 */	stw r4, 4(r5)
/* 80C5FB88  90 65 00 08 */	stw r3, 8(r5)
/* 80C5FB8C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C5FB90  4E 80 00 20 */	blr 
