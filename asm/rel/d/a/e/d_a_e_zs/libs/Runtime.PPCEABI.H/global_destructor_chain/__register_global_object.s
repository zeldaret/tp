lbl_80833038:
/* 80833038  3C C0 80 83 */	lis r6, __global_destructor_chain@ha
/* 8083303C  84 06 54 98 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80833040  90 05 00 00 */	stw r0, 0(r5)
/* 80833044  90 85 00 04 */	stw r4, 4(r5)
/* 80833048  90 65 00 08 */	stw r3, 8(r5)
/* 8083304C  90 A6 00 00 */	stw r5, 0(r6)
/* 80833050  4E 80 00 20 */	blr 
