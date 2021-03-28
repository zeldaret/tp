lbl_80A69AF8:
/* 80A69AF8  3C C0 80 A7 */	lis r6, __global_destructor_chain@ha
/* 80A69AFC  84 06 AA 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A69B00  90 05 00 00 */	stw r0, 0(r5)
/* 80A69B04  90 85 00 04 */	stw r4, 4(r5)
/* 80A69B08  90 65 00 08 */	stw r3, 8(r5)
/* 80A69B0C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A69B10  4E 80 00 20 */	blr 
