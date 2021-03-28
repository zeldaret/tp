lbl_80A92CF8:
/* 80A92CF8  3C C0 80 A9 */	lis r6, __global_destructor_chain@ha
/* 80A92CFC  84 06 7A C0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A92D00  90 05 00 00 */	stw r0, 0(r5)
/* 80A92D04  90 85 00 04 */	stw r4, 4(r5)
/* 80A92D08  90 65 00 08 */	stw r3, 8(r5)
/* 80A92D0C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A92D10  4E 80 00 20 */	blr 
