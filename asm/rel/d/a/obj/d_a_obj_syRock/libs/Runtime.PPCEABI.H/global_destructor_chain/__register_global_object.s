lbl_80D02238:
/* 80D02238  3C C0 80 D0 */	lis r6, __global_destructor_chain@ha
/* 80D0223C  84 06 42 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D02240  90 05 00 00 */	stw r0, 0(r5)
/* 80D02244  90 85 00 04 */	stw r4, 4(r5)
/* 80D02248  90 65 00 08 */	stw r3, 8(r5)
/* 80D0224C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D02250  4E 80 00 20 */	blr 
