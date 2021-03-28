lbl_80BC4AB8:
/* 80BC4AB8  3C C0 80 BC */	lis r6, __global_destructor_chain@ha
/* 80BC4ABC  84 06 58 F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BC4AC0  90 05 00 00 */	stw r0, 0(r5)
/* 80BC4AC4  90 85 00 04 */	stw r4, 4(r5)
/* 80BC4AC8  90 65 00 08 */	stw r3, 8(r5)
/* 80BC4ACC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BC4AD0  4E 80 00 20 */	blr 
