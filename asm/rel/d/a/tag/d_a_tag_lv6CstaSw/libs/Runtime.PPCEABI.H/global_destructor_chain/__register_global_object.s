lbl_80D5B278:
/* 80D5B278  3C C0 80 D6 */	lis r6, __global_destructor_chain@ha
/* 80D5B27C  84 06 B8 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D5B280  90 05 00 00 */	stw r0, 0(r5)
/* 80D5B284  90 85 00 04 */	stw r4, 4(r5)
/* 80D5B288  90 65 00 08 */	stw r3, 8(r5)
/* 80D5B28C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D5B290  4E 80 00 20 */	blr 
