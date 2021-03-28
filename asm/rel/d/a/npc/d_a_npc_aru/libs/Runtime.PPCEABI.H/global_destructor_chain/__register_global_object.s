lbl_80951718:
/* 80951718  3C C0 80 96 */	lis r6, __global_destructor_chain@ha
/* 8095171C  84 06 81 18 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80951720  90 05 00 00 */	stw r0, 0(r5)
/* 80951724  90 85 00 04 */	stw r4, 4(r5)
/* 80951728  90 65 00 08 */	stw r3, 8(r5)
/* 8095172C  90 A6 00 00 */	stw r5, 0(r6)
/* 80951730  4E 80 00 20 */	blr 
