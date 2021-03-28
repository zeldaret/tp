lbl_80536DD8:
/* 80536DD8  3C C0 80 54 */	lis r6, __global_destructor_chain@ha
/* 80536DDC  84 06 FE 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80536DE0  90 05 00 00 */	stw r0, 0(r5)
/* 80536DE4  90 85 00 04 */	stw r4, 4(r5)
/* 80536DE8  90 65 00 08 */	stw r3, 8(r5)
/* 80536DEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80536DF0  4E 80 00 20 */	blr 
