lbl_808080B8:
/* 808080B8  3C C0 80 81 */	lis r6, __global_destructor_chain@ha
/* 808080BC  84 06 5D 20 */	lwzu r0, __global_destructor_chain@l(r6)
/* 808080C0  90 05 00 00 */	stw r0, 0(r5)
/* 808080C4  90 85 00 04 */	stw r4, 4(r5)
/* 808080C8  90 65 00 08 */	stw r3, 8(r5)
/* 808080CC  90 A6 00 00 */	stw r5, 0(r6)
/* 808080D0  4E 80 00 20 */	blr 
