lbl_809ADDF8:
/* 809ADDF8  3C C0 80 9B */	lis r6, __global_destructor_chain@ha
/* 809ADDFC  84 06 FC 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809ADE00  90 05 00 00 */	stw r0, 0(r5)
/* 809ADE04  90 85 00 04 */	stw r4, 4(r5)
/* 809ADE08  90 65 00 08 */	stw r3, 8(r5)
/* 809ADE0C  90 A6 00 00 */	stw r5, 0(r6)
/* 809ADE10  4E 80 00 20 */	blr 
