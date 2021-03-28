lbl_80CA3B98:
/* 80CA3B98  3C C0 80 CA */	lis r6, __global_destructor_chain@ha
/* 80CA3B9C  84 06 4B 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CA3BA0  90 05 00 00 */	stw r0, 0(r5)
/* 80CA3BA4  90 85 00 04 */	stw r4, 4(r5)
/* 80CA3BA8  90 65 00 08 */	stw r3, 8(r5)
/* 80CA3BAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80CA3BB0  4E 80 00 20 */	blr 
