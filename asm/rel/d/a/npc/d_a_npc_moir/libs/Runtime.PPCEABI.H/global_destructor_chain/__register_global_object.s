lbl_80A7C0F8:
/* 80A7C0F8  3C C0 80 A8 */	lis r6, __global_destructor_chain@ha
/* 80A7C0FC  84 06 3D 70 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A7C100  90 05 00 00 */	stw r0, 0(r5)
/* 80A7C104  90 85 00 04 */	stw r4, 4(r5)
/* 80A7C108  90 65 00 08 */	stw r3, 8(r5)
/* 80A7C10C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A7C110  4E 80 00 20 */	blr 
