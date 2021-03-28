lbl_80D1F058:
/* 80D1F058  3C C0 80 D2 */	lis r6, __global_destructor_chain@ha
/* 80D1F05C  84 06 F9 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D1F060  90 05 00 00 */	stw r0, 0(r5)
/* 80D1F064  90 85 00 04 */	stw r4, 4(r5)
/* 80D1F068  90 65 00 08 */	stw r3, 8(r5)
/* 80D1F06C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D1F070  4E 80 00 20 */	blr 
