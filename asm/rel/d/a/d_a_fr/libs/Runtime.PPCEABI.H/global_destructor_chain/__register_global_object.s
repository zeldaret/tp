lbl_80519878:
/* 80519878  3C C0 80 52 */	lis r6, __global_destructor_chain@ha
/* 8051987C  84 06 BC 08 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80519880  90 05 00 00 */	stw r0, 0(r5)
/* 80519884  90 85 00 04 */	stw r4, 4(r5)
/* 80519888  90 65 00 08 */	stw r3, 8(r5)
/* 8051988C  90 A6 00 00 */	stw r5, 0(r6)
/* 80519890  4E 80 00 20 */	blr 
