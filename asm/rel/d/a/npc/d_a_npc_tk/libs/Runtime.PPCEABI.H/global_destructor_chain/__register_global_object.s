lbl_80B01398:
/* 80B01398  3C C0 80 B1 */	lis r6, __global_destructor_chain@ha
/* 80B0139C  84 06 C5 B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B013A0  90 05 00 00 */	stw r0, 0(r5)
/* 80B013A4  90 85 00 04 */	stw r4, 4(r5)
/* 80B013A8  90 65 00 08 */	stw r3, 8(r5)
/* 80B013AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80B013B0  4E 80 00 20 */	blr 
