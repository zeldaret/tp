lbl_808047B8:
/* 808047B8  3C C0 80 80 */	lis r6, __global_destructor_chain@ha
/* 808047BC  84 06 7E F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 808047C0  90 05 00 00 */	stw r0, 0(r5)
/* 808047C4  90 85 00 04 */	stw r4, 4(r5)
/* 808047C8  90 65 00 08 */	stw r3, 8(r5)
/* 808047CC  90 A6 00 00 */	stw r5, 0(r6)
/* 808047D0  4E 80 00 20 */	blr 
