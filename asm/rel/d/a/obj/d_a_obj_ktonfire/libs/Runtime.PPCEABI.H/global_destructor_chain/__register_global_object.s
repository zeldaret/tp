lbl_8058C598:
/* 8058C598  3C C0 80 59 */	lis r6, __global_destructor_chain@ha
/* 8058C59C  84 06 D0 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8058C5A0  90 05 00 00 */	stw r0, 0(r5)
/* 8058C5A4  90 85 00 04 */	stw r4, 4(r5)
/* 8058C5A8  90 65 00 08 */	stw r3, 8(r5)
/* 8058C5AC  90 A6 00 00 */	stw r5, 0(r6)
/* 8058C5B0  4E 80 00 20 */	blr 
