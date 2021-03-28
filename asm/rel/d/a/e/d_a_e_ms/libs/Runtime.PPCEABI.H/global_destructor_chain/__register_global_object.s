lbl_80725B18:
/* 80725B18  3C C0 80 73 */	lis r6, __global_destructor_chain@ha
/* 80725B1C  84 06 97 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80725B20  90 05 00 00 */	stw r0, 0(r5)
/* 80725B24  90 85 00 04 */	stw r4, 4(r5)
/* 80725B28  90 65 00 08 */	stw r3, 8(r5)
/* 80725B2C  90 A6 00 00 */	stw r5, 0(r6)
/* 80725B30  4E 80 00 20 */	blr 
