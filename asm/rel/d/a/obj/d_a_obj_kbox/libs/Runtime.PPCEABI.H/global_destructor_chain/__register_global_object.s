lbl_80C3D598:
/* 80C3D598  3C C0 80 C4 */	lis r6, __global_destructor_chain@ha
/* 80C3D59C  84 06 F2 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C3D5A0  90 05 00 00 */	stw r0, 0(r5)
/* 80C3D5A4  90 85 00 04 */	stw r4, 4(r5)
/* 80C3D5A8  90 65 00 08 */	stw r3, 8(r5)
/* 80C3D5AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C3D5B0  4E 80 00 20 */	blr 
