lbl_809A5318:
/* 809A5318  3C C0 80 9A */	lis r6, __global_destructor_chain@ha
/* 809A531C  84 06 6A 08 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809A5320  90 05 00 00 */	stw r0, 0(r5)
/* 809A5324  90 85 00 04 */	stw r4, 4(r5)
/* 809A5328  90 65 00 08 */	stw r3, 8(r5)
/* 809A532C  90 A6 00 00 */	stw r5, 0(r6)
/* 809A5330  4E 80 00 20 */	blr 
