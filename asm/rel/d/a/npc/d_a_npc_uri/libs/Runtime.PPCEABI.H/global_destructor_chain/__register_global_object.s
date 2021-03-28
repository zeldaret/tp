lbl_80B26738:
/* 80B26738  3C C0 80 B3 */	lis r6, __global_destructor_chain@ha
/* 80B2673C  84 06 DD 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B26740  90 05 00 00 */	stw r0, 0(r5)
/* 80B26744  90 85 00 04 */	stw r4, 4(r5)
/* 80B26748  90 65 00 08 */	stw r3, 8(r5)
/* 80B2674C  90 A6 00 00 */	stw r5, 0(r6)
/* 80B26750  4E 80 00 20 */	blr 
