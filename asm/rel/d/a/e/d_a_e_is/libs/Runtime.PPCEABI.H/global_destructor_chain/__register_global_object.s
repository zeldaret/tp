lbl_806F59D8:
/* 806F59D8  3C C0 80 6F */	lis r6, __global_destructor_chain@ha
/* 806F59DC  84 06 7D C8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806F59E0  90 05 00 00 */	stw r0, 0(r5)
/* 806F59E4  90 85 00 04 */	stw r4, 4(r5)
/* 806F59E8  90 65 00 08 */	stw r3, 8(r5)
/* 806F59EC  90 A6 00 00 */	stw r5, 0(r6)
/* 806F59F0  4E 80 00 20 */	blr 
