lbl_80499BF8:
/* 80499BF8  3C C0 80 4A */	lis r6, __global_destructor_chain@ha
/* 80499BFC  84 06 DF 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80499C00  90 05 00 00 */	stw r0, 0(r5)
/* 80499C04  90 85 00 04 */	stw r4, 4(r5)
/* 80499C08  90 65 00 08 */	stw r3, 8(r5)
/* 80499C0C  90 A6 00 00 */	stw r5, 0(r6)
/* 80499C10  4E 80 00 20 */	blr 
