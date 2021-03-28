lbl_805ED8D8:
/* 805ED8D8  3C C0 80 5F */	lis r6, __global_destructor_chain@ha
/* 805ED8DC  84 06 47 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805ED8E0  90 05 00 00 */	stw r0, 0(r5)
/* 805ED8E4  90 85 00 04 */	stw r4, 4(r5)
/* 805ED8E8  90 65 00 08 */	stw r3, 8(r5)
/* 805ED8EC  90 A6 00 00 */	stw r5, 0(r6)
/* 805ED8F0  4E 80 00 20 */	blr 
