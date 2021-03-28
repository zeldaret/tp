lbl_80C154B8:
/* 80C154B8  3C C0 80 C1 */	lis r6, __global_destructor_chain@ha
/* 80C154BC  84 06 65 E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C154C0  90 05 00 00 */	stw r0, 0(r5)
/* 80C154C4  90 85 00 04 */	stw r4, 4(r5)
/* 80C154C8  90 65 00 08 */	stw r3, 8(r5)
/* 80C154CC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C154D0  4E 80 00 20 */	blr 
