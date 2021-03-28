lbl_80C398F8:
/* 80C398F8  3C C0 80 C4 */	lis r6, __global_destructor_chain@ha
/* 80C398FC  84 06 C8 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C39900  90 05 00 00 */	stw r0, 0(r5)
/* 80C39904  90 85 00 04 */	stw r4, 4(r5)
/* 80C39908  90 65 00 08 */	stw r3, 8(r5)
/* 80C3990C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C39910  4E 80 00 20 */	blr 
