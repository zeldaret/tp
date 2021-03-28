lbl_80CBC658:
/* 80CBC658  3C C0 80 CC */	lis r6, __global_destructor_chain@ha
/* 80CBC65C  84 06 DB E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CBC660  90 05 00 00 */	stw r0, 0(r5)
/* 80CBC664  90 85 00 04 */	stw r4, 4(r5)
/* 80CBC668  90 65 00 08 */	stw r3, 8(r5)
/* 80CBC66C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CBC670  4E 80 00 20 */	blr 
