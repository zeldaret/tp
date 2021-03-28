lbl_80BFB0D8:
/* 80BFB0D8  3C C0 80 C0 */	lis r6, __global_destructor_chain@ha
/* 80BFB0DC  84 06 D5 90 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BFB0E0  90 05 00 00 */	stw r0, 0(r5)
/* 80BFB0E4  90 85 00 04 */	stw r4, 4(r5)
/* 80BFB0E8  90 65 00 08 */	stw r3, 8(r5)
/* 80BFB0EC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BFB0F0  4E 80 00 20 */	blr 
