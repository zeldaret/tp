lbl_80BFD638:
/* 80BFD638  3C C0 80 C0 */	lis r6, __global_destructor_chain@ha
/* 80BFD63C  84 06 E1 08 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BFD640  90 05 00 00 */	stw r0, 0(r5)
/* 80BFD644  90 85 00 04 */	stw r4, 4(r5)
/* 80BFD648  90 65 00 08 */	stw r3, 8(r5)
/* 80BFD64C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BFD650  4E 80 00 20 */	blr 
