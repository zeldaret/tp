lbl_80C58758:
/* 80C58758  3C C0 80 C6 */	lis r6, __global_destructor_chain@ha
/* 80C5875C  84 06 A3 00 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C58760  90 05 00 00 */	stw r0, 0(r5)
/* 80C58764  90 85 00 04 */	stw r4, 4(r5)
/* 80C58768  90 65 00 08 */	stw r3, 8(r5)
/* 80C5876C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C58770  4E 80 00 20 */	blr 
