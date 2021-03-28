lbl_80D2BB18:
/* 80D2BB18  3C C0 80 D3 */	lis r6, __global_destructor_chain@ha
/* 80D2BB1C  84 06 C5 A8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D2BB20  90 05 00 00 */	stw r0, 0(r5)
/* 80D2BB24  90 85 00 04 */	stw r4, 4(r5)
/* 80D2BB28  90 65 00 08 */	stw r3, 8(r5)
/* 80D2BB2C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D2BB30  4E 80 00 20 */	blr 
