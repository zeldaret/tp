lbl_805DE398:
/* 805DE398  3C C0 80 5F */	lis r6, __global_destructor_chain@ha
/* 805DE39C  84 06 D6 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805DE3A0  90 05 00 00 */	stw r0, 0(r5)
/* 805DE3A4  90 85 00 04 */	stw r4, 4(r5)
/* 805DE3A8  90 65 00 08 */	stw r3, 8(r5)
/* 805DE3AC  90 A6 00 00 */	stw r5, 0(r6)
/* 805DE3B0  4E 80 00 20 */	blr 
