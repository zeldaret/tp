lbl_80BA9DB8:
/* 80BA9DB8  3C C0 80 BB */	lis r6, __global_destructor_chain@ha
/* 80BA9DBC  84 06 CC 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BA9DC0  90 05 00 00 */	stw r0, 0(r5)
/* 80BA9DC4  90 85 00 04 */	stw r4, 4(r5)
/* 80BA9DC8  90 65 00 08 */	stw r3, 8(r5)
/* 80BA9DCC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BA9DD0  4E 80 00 20 */	blr 
