lbl_807A7398:
/* 807A7398  3C C0 80 7B */	lis r6, __global_destructor_chain@ha
/* 807A739C  84 06 01 B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807A73A0  90 05 00 00 */	stw r0, 0(r5)
/* 807A73A4  90 85 00 04 */	stw r4, 4(r5)
/* 807A73A8  90 65 00 08 */	stw r3, 8(r5)
/* 807A73AC  90 A6 00 00 */	stw r5, 0(r6)
/* 807A73B0  4E 80 00 20 */	blr 
