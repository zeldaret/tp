lbl_80685798:
/* 80685798  3C C0 80 69 */	lis r6, __global_destructor_chain@ha
/* 8068579C  84 06 A4 B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806857A0  90 05 00 00 */	stw r0, 0(r5)
/* 806857A4  90 85 00 04 */	stw r4, 4(r5)
/* 806857A8  90 65 00 08 */	stw r3, 8(r5)
/* 806857AC  90 A6 00 00 */	stw r5, 0(r6)
/* 806857B0  4E 80 00 20 */	blr 
