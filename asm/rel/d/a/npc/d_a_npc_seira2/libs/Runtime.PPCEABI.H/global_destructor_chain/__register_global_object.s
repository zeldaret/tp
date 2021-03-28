lbl_80AD0B98:
/* 80AD0B98  3C C0 80 AD */	lis r6, __global_destructor_chain@ha
/* 80AD0B9C  84 06 56 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AD0BA0  90 05 00 00 */	stw r0, 0(r5)
/* 80AD0BA4  90 85 00 04 */	stw r4, 4(r5)
/* 80AD0BA8  90 65 00 08 */	stw r3, 8(r5)
/* 80AD0BAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80AD0BB0  4E 80 00 20 */	blr 
