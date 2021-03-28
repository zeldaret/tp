lbl_807815D8:
/* 807815D8  3C C0 80 78 */	lis r6, __global_destructor_chain@ha
/* 807815DC  84 06 4F 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807815E0  90 05 00 00 */	stw r0, 0(r5)
/* 807815E4  90 85 00 04 */	stw r4, 4(r5)
/* 807815E8  90 65 00 08 */	stw r3, 8(r5)
/* 807815EC  90 A6 00 00 */	stw r5, 0(r6)
/* 807815F0  4E 80 00 20 */	blr 
