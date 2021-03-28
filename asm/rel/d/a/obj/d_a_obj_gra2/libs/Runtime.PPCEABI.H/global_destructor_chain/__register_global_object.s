lbl_80BFFE98:
/* 80BFFE98  3C C0 80 C1 */	lis r6, __global_destructor_chain@ha
/* 80BFFE9C  84 06 08 98 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BFFEA0  90 05 00 00 */	stw r0, 0(r5)
/* 80BFFEA4  90 85 00 04 */	stw r4, 4(r5)
/* 80BFFEA8  90 65 00 08 */	stw r3, 8(r5)
/* 80BFFEAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BFFEB0  4E 80 00 20 */	blr 
