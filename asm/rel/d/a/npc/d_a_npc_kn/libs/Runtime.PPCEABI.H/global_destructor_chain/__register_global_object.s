lbl_80A2A998:
/* 80A2A998  3C C0 80 A4 */	lis r6, __global_destructor_chain@ha
/* 80A2A99C  84 06 32 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A2A9A0  90 05 00 00 */	stw r0, 0(r5)
/* 80A2A9A4  90 85 00 04 */	stw r4, 4(r5)
/* 80A2A9A8  90 65 00 08 */	stw r3, 8(r5)
/* 80A2A9AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80A2A9B0  4E 80 00 20 */	blr 
