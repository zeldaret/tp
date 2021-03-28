lbl_8068E0B8:
/* 8068E0B8  3C C0 80 69 */	lis r6, __global_destructor_chain@ha
/* 8068E0BC  84 06 10 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8068E0C0  90 05 00 00 */	stw r0, 0(r5)
/* 8068E0C4  90 85 00 04 */	stw r4, 4(r5)
/* 8068E0C8  90 65 00 08 */	stw r3, 8(r5)
/* 8068E0CC  90 A6 00 00 */	stw r5, 0(r6)
/* 8068E0D0  4E 80 00 20 */	blr 
