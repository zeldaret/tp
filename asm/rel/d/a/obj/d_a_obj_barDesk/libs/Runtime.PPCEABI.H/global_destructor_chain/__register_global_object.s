lbl_80BA9118:
/* 80BA9118  3C C0 80 BB */	lis r6, __global_destructor_chain@ha
/* 80BA911C  84 06 9D 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BA9120  90 05 00 00 */	stw r0, 0(r5)
/* 80BA9124  90 85 00 04 */	stw r4, 4(r5)
/* 80BA9128  90 65 00 08 */	stw r3, 8(r5)
/* 80BA912C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BA9130  4E 80 00 20 */	blr 
