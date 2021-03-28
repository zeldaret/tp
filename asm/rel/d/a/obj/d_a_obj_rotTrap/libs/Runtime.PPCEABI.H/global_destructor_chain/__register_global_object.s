lbl_80CBF838:
/* 80CBF838  3C C0 80 CC */	lis r6, __global_destructor_chain@ha
/* 80CBF83C  84 06 0A B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CBF840  90 05 00 00 */	stw r0, 0(r5)
/* 80CBF844  90 85 00 04 */	stw r4, 4(r5)
/* 80CBF848  90 65 00 08 */	stw r3, 8(r5)
/* 80CBF84C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CBF850  4E 80 00 20 */	blr 
