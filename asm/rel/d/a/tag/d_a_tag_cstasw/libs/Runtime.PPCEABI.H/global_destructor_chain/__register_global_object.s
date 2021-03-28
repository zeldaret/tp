lbl_805A1FB8:
/* 805A1FB8  3C C0 80 5A */	lis r6, __global_destructor_chain@ha
/* 805A1FBC  84 06 25 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805A1FC0  90 05 00 00 */	stw r0, 0(r5)
/* 805A1FC4  90 85 00 04 */	stw r4, 4(r5)
/* 805A1FC8  90 65 00 08 */	stw r3, 8(r5)
/* 805A1FCC  90 A6 00 00 */	stw r5, 0(r6)
/* 805A1FD0  4E 80 00 20 */	blr 
