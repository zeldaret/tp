lbl_804FB078:
/* 804FB078  3C C0 80 50 */	lis r6, __global_destructor_chain@ha
/* 804FB07C  84 06 BC 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804FB080  90 05 00 00 */	stw r0, 0(r5)
/* 804FB084  90 85 00 04 */	stw r4, 4(r5)
/* 804FB088  90 65 00 08 */	stw r3, 8(r5)
/* 804FB08C  90 A6 00 00 */	stw r5, 0(r6)
/* 804FB090  4E 80 00 20 */	blr 
