lbl_80A642B8:
/* 80A642B8  3C C0 80 A7 */	lis r6, __global_destructor_chain@ha
/* 80A642BC  84 06 9A 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A642C0  90 05 00 00 */	stw r0, 0(r5)
/* 80A642C4  90 85 00 04 */	stw r4, 4(r5)
/* 80A642C8  90 65 00 08 */	stw r3, 8(r5)
/* 80A642CC  90 A6 00 00 */	stw r5, 0(r6)
/* 80A642D0  4E 80 00 20 */	blr 
