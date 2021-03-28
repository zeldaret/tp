lbl_80667CD8:
/* 80667CD8  3C C0 80 67 */	lis r6, __global_destructor_chain@ha
/* 80667CDC  84 06 F2 70 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80667CE0  90 05 00 00 */	stw r0, 0(r5)
/* 80667CE4  90 85 00 04 */	stw r4, 4(r5)
/* 80667CE8  90 65 00 08 */	stw r3, 8(r5)
/* 80667CEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80667CF0  4E 80 00 20 */	blr 
