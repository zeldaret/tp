lbl_80D17AF8:
/* 80D17AF8  3C C0 80 D2 */	lis r6, __global_destructor_chain@ha
/* 80D17AFC  84 06 90 A0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D17B00  90 05 00 00 */	stw r0, 0(r5)
/* 80D17B04  90 85 00 04 */	stw r4, 4(r5)
/* 80D17B08  90 65 00 08 */	stw r3, 8(r5)
/* 80D17B0C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D17B10  4E 80 00 20 */	blr 
