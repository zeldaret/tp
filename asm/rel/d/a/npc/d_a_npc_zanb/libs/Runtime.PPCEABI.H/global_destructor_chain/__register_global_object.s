lbl_80B68EB8:
/* 80B68EB8  3C C0 80 B7 */	lis r6, __global_destructor_chain@ha
/* 80B68EBC  84 06 C0 A0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B68EC0  90 05 00 00 */	stw r0, 0(r5)
/* 80B68EC4  90 85 00 04 */	stw r4, 4(r5)
/* 80B68EC8  90 65 00 08 */	stw r3, 8(r5)
/* 80B68ECC  90 A6 00 00 */	stw r5, 0(r6)
/* 80B68ED0  4E 80 00 20 */	blr 
