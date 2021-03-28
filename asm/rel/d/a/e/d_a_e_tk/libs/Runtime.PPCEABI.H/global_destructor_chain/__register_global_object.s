lbl_807B8178:
/* 807B8178  3C C0 80 7C */	lis r6, __global_destructor_chain@ha
/* 807B817C  84 06 A4 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807B8180  90 05 00 00 */	stw r0, 0(r5)
/* 807B8184  90 85 00 04 */	stw r4, 4(r5)
/* 807B8188  90 65 00 08 */	stw r3, 8(r5)
/* 807B818C  90 A6 00 00 */	stw r5, 0(r6)
/* 807B8190  4E 80 00 20 */	blr 
