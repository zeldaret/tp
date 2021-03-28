lbl_809734D8:
/* 809734D8  3C C0 80 98 */	lis r6, __global_destructor_chain@ha
/* 809734DC  84 06 8B 70 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809734E0  90 05 00 00 */	stw r0, 0(r5)
/* 809734E4  90 85 00 04 */	stw r4, 4(r5)
/* 809734E8  90 65 00 08 */	stw r3, 8(r5)
/* 809734EC  90 A6 00 00 */	stw r5, 0(r6)
/* 809734F0  4E 80 00 20 */	blr 
