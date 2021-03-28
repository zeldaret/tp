lbl_8063E098:
/* 8063E098  3C C0 80 65 */	lis r6, __global_destructor_chain@ha
/* 8063E09C  84 06 F5 B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8063E0A0  90 05 00 00 */	stw r0, 0(r5)
/* 8063E0A4  90 85 00 04 */	stw r4, 4(r5)
/* 8063E0A8  90 65 00 08 */	stw r3, 8(r5)
/* 8063E0AC  90 A6 00 00 */	stw r5, 0(r6)
/* 8063E0B0  4E 80 00 20 */	blr 
