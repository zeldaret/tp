lbl_80B145B8:
/* 80B145B8  3C C0 80 B2 */	lis r6, __global_destructor_chain@ha
/* 80B145BC  84 06 E5 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B145C0  90 05 00 00 */	stw r0, 0(r5)
/* 80B145C4  90 85 00 04 */	stw r4, 4(r5)
/* 80B145C8  90 65 00 08 */	stw r3, 8(r5)
/* 80B145CC  90 A6 00 00 */	stw r5, 0(r6)
/* 80B145D0  4E 80 00 20 */	blr 
