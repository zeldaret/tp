lbl_804A4298:
/* 804A4298  3C C0 80 4B */	lis r6, __global_destructor_chain@ha
/* 804A429C  84 06 8C 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804A42A0  90 05 00 00 */	stw r0, 0(r5)
/* 804A42A4  90 85 00 04 */	stw r4, 4(r5)
/* 804A42A8  90 65 00 08 */	stw r3, 8(r5)
/* 804A42AC  90 A6 00 00 */	stw r5, 0(r6)
/* 804A42B0  4E 80 00 20 */	blr 
