lbl_80AB5C38:
/* 80AB5C38  3C C0 80 AC */	lis r6, __global_destructor_chain@ha
/* 80AB5C3C  84 06 95 28 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AB5C40  90 05 00 00 */	stw r0, 0(r5)
/* 80AB5C44  90 85 00 04 */	stw r4, 4(r5)
/* 80AB5C48  90 65 00 08 */	stw r3, 8(r5)
/* 80AB5C4C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AB5C50  4E 80 00 20 */	blr 
