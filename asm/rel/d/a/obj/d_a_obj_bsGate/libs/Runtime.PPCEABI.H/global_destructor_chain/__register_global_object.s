lbl_80BC2818:
/* 80BC2818  3C C0 80 BC */	lis r6, __global_destructor_chain@ha
/* 80BC281C  84 06 32 C8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BC2820  90 05 00 00 */	stw r0, 0(r5)
/* 80BC2824  90 85 00 04 */	stw r4, 4(r5)
/* 80BC2828  90 65 00 08 */	stw r3, 8(r5)
/* 80BC282C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BC2830  4E 80 00 20 */	blr 
