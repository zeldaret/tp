lbl_805F49D8:
/* 805F49D8  3C C0 80 60 */	lis r6, __global_destructor_chain@ha
/* 805F49DC  84 06 2F 60 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805F49E0  90 05 00 00 */	stw r0, 0(r5)
/* 805F49E4  90 85 00 04 */	stw r4, 4(r5)
/* 805F49E8  90 65 00 08 */	stw r3, 8(r5)
/* 805F49EC  90 A6 00 00 */	stw r5, 0(r6)
/* 805F49F0  4E 80 00 20 */	blr 
