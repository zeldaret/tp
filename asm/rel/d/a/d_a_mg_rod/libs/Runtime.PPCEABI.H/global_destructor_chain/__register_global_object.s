lbl_804A9578:
/* 804A9578  3C C0 80 4C */	lis r6, __global_destructor_chain@ha
/* 804A957C  84 06 BB 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804A9580  90 05 00 00 */	stw r0, 0(r5)
/* 804A9584  90 85 00 04 */	stw r4, 4(r5)
/* 804A9588  90 65 00 08 */	stw r3, 8(r5)
/* 804A958C  90 A6 00 00 */	stw r5, 0(r6)
/* 804A9590  4E 80 00 20 */	blr 
