lbl_80694B18:
/* 80694B18  3C C0 80 69 */	lis r6, __global_destructor_chain@ha
/* 80694B1C  84 06 7E 28 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80694B20  90 05 00 00 */	stw r0, 0(r5)
/* 80694B24  90 85 00 04 */	stw r4, 4(r5)
/* 80694B28  90 65 00 08 */	stw r3, 8(r5)
/* 80694B2C  90 A6 00 00 */	stw r5, 0(r6)
/* 80694B30  4E 80 00 20 */	blr 
