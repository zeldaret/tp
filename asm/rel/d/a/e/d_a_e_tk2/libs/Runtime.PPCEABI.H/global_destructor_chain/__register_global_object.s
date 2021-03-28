lbl_807BA4F8:
/* 807BA4F8  3C C0 80 7C */	lis r6, __global_destructor_chain@ha
/* 807BA4FC  84 06 BF 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807BA500  90 05 00 00 */	stw r0, 0(r5)
/* 807BA504  90 85 00 04 */	stw r4, 4(r5)
/* 807BA508  90 65 00 08 */	stw r3, 8(r5)
/* 807BA50C  90 A6 00 00 */	stw r5, 0(r6)
/* 807BA510  4E 80 00 20 */	blr 
