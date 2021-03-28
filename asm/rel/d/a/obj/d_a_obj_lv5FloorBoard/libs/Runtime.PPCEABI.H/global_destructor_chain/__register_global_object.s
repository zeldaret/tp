lbl_80C6A598:
/* 80C6A598  3C C0 80 C7 */	lis r6, __global_destructor_chain@ha
/* 80C6A59C  84 06 B2 F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C6A5A0  90 05 00 00 */	stw r0, 0(r5)
/* 80C6A5A4  90 85 00 04 */	stw r4, 4(r5)
/* 80C6A5A8  90 65 00 08 */	stw r3, 8(r5)
/* 80C6A5AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C6A5B0  4E 80 00 20 */	blr 
