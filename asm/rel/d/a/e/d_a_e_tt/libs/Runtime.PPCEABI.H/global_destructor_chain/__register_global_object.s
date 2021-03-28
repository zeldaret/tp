lbl_807BD738:
/* 807BD738  3C C0 80 7C */	lis r6, __global_destructor_chain@ha
/* 807BD73C  84 06 23 98 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807BD740  90 05 00 00 */	stw r0, 0(r5)
/* 807BD744  90 85 00 04 */	stw r4, 4(r5)
/* 807BD748  90 65 00 08 */	stw r3, 8(r5)
/* 807BD74C  90 A6 00 00 */	stw r5, 0(r6)
/* 807BD750  4E 80 00 20 */	blr 
