lbl_80762318:
/* 80762318  3C C0 80 76 */	lis r6, __global_destructor_chain@ha
/* 8076231C  84 06 4F 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80762320  90 05 00 00 */	stw r0, 0(r5)
/* 80762324  90 85 00 04 */	stw r4, 4(r5)
/* 80762328  90 65 00 08 */	stw r3, 8(r5)
/* 8076232C  90 A6 00 00 */	stw r5, 0(r6)
/* 80762330  4E 80 00 20 */	blr 
