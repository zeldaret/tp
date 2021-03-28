lbl_804DA4D8:
/* 804DA4D8  3C C0 80 4E */	lis r6, __global_destructor_chain@ha
/* 804DA4DC  84 06 D7 F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804DA4E0  90 05 00 00 */	stw r0, 0(r5)
/* 804DA4E4  90 85 00 04 */	stw r4, 4(r5)
/* 804DA4E8  90 65 00 08 */	stw r3, 8(r5)
/* 804DA4EC  90 A6 00 00 */	stw r5, 0(r6)
/* 804DA4F0  4E 80 00 20 */	blr 
