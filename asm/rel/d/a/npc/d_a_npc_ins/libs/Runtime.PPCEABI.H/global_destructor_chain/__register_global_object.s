lbl_80A0E1D8:
/* 80A0E1D8  3C C0 80 A1 */	lis r6, __global_destructor_chain@ha
/* 80A0E1DC  84 06 45 F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A0E1E0  90 05 00 00 */	stw r0, 0(r5)
/* 80A0E1E4  90 85 00 04 */	stw r4, 4(r5)
/* 80A0E1E8  90 65 00 08 */	stw r3, 8(r5)
/* 80A0E1EC  90 A6 00 00 */	stw r5, 0(r6)
/* 80A0E1F0  4E 80 00 20 */	blr 
