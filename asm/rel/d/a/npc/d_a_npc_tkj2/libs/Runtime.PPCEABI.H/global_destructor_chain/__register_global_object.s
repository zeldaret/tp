lbl_80B10D78:
/* 80B10D78  3C C0 80 B1 */	lis r6, __global_destructor_chain@ha
/* 80B10D7C  84 06 44 F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B10D80  90 05 00 00 */	stw r0, 0(r5)
/* 80B10D84  90 85 00 04 */	stw r4, 4(r5)
/* 80B10D88  90 65 00 08 */	stw r3, 8(r5)
/* 80B10D8C  90 A6 00 00 */	stw r5, 0(r6)
/* 80B10D90  4E 80 00 20 */	blr 
