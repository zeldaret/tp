lbl_80B2F218:
/* 80B2F218  3C C0 80 B4 */	lis r6, __global_destructor_chain@ha
/* 80B2F21C  84 06 2E 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B2F220  90 05 00 00 */	stw r0, 0(r5)
/* 80B2F224  90 85 00 04 */	stw r4, 4(r5)
/* 80B2F228  90 65 00 08 */	stw r3, 8(r5)
/* 80B2F22C  90 A6 00 00 */	stw r5, 0(r6)
/* 80B2F230  4E 80 00 20 */	blr 
