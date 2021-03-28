lbl_807C2578:
/* 807C2578  3C C0 80 7D */	lis r6, __global_destructor_chain@ha
/* 807C257C  84 06 F4 70 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807C2580  90 05 00 00 */	stw r0, 0(r5)
/* 807C2584  90 85 00 04 */	stw r4, 4(r5)
/* 807C2588  90 65 00 08 */	stw r3, 8(r5)
/* 807C258C  90 A6 00 00 */	stw r5, 0(r6)
/* 807C2590  4E 80 00 20 */	blr 
