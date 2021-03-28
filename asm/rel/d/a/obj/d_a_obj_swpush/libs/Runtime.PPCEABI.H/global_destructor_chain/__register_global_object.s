lbl_80482CD8:
/* 80482CD8  3C C0 80 48 */	lis r6, __global_destructor_chain@ha
/* 80482CDC  84 06 4F F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80482CE0  90 05 00 00 */	stw r0, 0(r5)
/* 80482CE4  90 85 00 04 */	stw r4, 4(r5)
/* 80482CE8  90 65 00 08 */	stw r3, 8(r5)
/* 80482CEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80482CF0  4E 80 00 20 */	blr 
