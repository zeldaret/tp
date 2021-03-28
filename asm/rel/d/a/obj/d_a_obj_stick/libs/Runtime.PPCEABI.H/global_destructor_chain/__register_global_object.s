lbl_805991B8:
/* 805991B8  3C C0 80 5A */	lis r6, __global_destructor_chain@ha
/* 805991BC  84 06 9F 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805991C0  90 05 00 00 */	stw r0, 0(r5)
/* 805991C4  90 85 00 04 */	stw r4, 4(r5)
/* 805991C8  90 65 00 08 */	stw r3, 8(r5)
/* 805991CC  90 A6 00 00 */	stw r5, 0(r6)
/* 805991D0  4E 80 00 20 */	blr 
