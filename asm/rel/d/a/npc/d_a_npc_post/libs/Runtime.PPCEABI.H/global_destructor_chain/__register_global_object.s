lbl_80AA8C18:
/* 80AA8C18  3C C0 80 AB */	lis r6, __global_destructor_chain@ha
/* 80AA8C1C  84 06 DB E8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AA8C20  90 05 00 00 */	stw r0, 0(r5)
/* 80AA8C24  90 85 00 04 */	stw r4, 4(r5)
/* 80AA8C28  90 65 00 08 */	stw r3, 8(r5)
/* 80AA8C2C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AA8C30  4E 80 00 20 */	blr 
