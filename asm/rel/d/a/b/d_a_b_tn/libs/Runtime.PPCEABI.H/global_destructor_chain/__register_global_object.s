lbl_8061EB78:
/* 8061EB78  3C C0 80 63 */	lis r6, __global_destructor_chain@ha
/* 8061EB7C  84 06 EF D8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8061EB80  90 05 00 00 */	stw r0, 0(r5)
/* 8061EB84  90 85 00 04 */	stw r4, 4(r5)
/* 8061EB88  90 65 00 08 */	stw r3, 8(r5)
/* 8061EB8C  90 A6 00 00 */	stw r5, 0(r6)
/* 8061EB90  4E 80 00 20 */	blr 
