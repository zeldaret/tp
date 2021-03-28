lbl_80C84838:
/* 80C84838  3C C0 80 C8 */	lis r6, __global_destructor_chain@ha
/* 80C8483C  84 06 53 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C84840  90 05 00 00 */	stw r0, 0(r5)
/* 80C84844  90 85 00 04 */	stw r4, 4(r5)
/* 80C84848  90 65 00 08 */	stw r3, 8(r5)
/* 80C8484C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C84850  4E 80 00 20 */	blr 
