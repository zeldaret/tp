lbl_80741E78:
/* 80741E78  3C C0 80 75 */	lis r6, __global_destructor_chain@ha
/* 80741E7C  84 06 C3 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80741E80  90 05 00 00 */	stw r0, 0(r5)
/* 80741E84  90 85 00 04 */	stw r4, 4(r5)
/* 80741E88  90 65 00 08 */	stw r3, 8(r5)
/* 80741E8C  90 A6 00 00 */	stw r5, 0(r6)
/* 80741E90  4E 80 00 20 */	blr 
