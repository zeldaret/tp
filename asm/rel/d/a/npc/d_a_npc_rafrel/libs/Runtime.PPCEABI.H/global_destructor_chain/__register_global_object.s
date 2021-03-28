lbl_80AB95B8:
/* 80AB95B8  3C C0 80 AC */	lis r6, __global_destructor_chain@ha
/* 80AB95BC  84 06 03 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AB95C0  90 05 00 00 */	stw r0, 0(r5)
/* 80AB95C4  90 85 00 04 */	stw r4, 4(r5)
/* 80AB95C8  90 65 00 08 */	stw r3, 8(r5)
/* 80AB95CC  90 A6 00 00 */	stw r5, 0(r6)
/* 80AB95D0  4E 80 00 20 */	blr 
