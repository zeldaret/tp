lbl_80995EB8:
/* 80995EB8  3C C0 80 9A */	lis r6, __global_destructor_chain@ha
/* 80995EBC  84 06 A0 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80995EC0  90 05 00 00 */	stw r0, 0(r5)
/* 80995EC4  90 85 00 04 */	stw r4, 4(r5)
/* 80995EC8  90 65 00 08 */	stw r3, 8(r5)
/* 80995ECC  90 A6 00 00 */	stw r5, 0(r6)
/* 80995ED0  4E 80 00 20 */	blr 
