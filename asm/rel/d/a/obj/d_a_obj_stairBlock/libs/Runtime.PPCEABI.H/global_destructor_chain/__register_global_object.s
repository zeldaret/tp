lbl_80CE80F8:
/* 80CE80F8  3C C0 80 CF */	lis r6, __global_destructor_chain@ha
/* 80CE80FC  84 06 8F C0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CE8100  90 05 00 00 */	stw r0, 0(r5)
/* 80CE8104  90 85 00 04 */	stw r4, 4(r5)
/* 80CE8108  90 65 00 08 */	stw r3, 8(r5)
/* 80CE810C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CE8110  4E 80 00 20 */	blr 
