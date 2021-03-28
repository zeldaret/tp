lbl_80C93F58:
/* 80C93F58  3C C0 80 C9 */	lis r6, __global_destructor_chain@ha
/* 80C93F5C  84 06 5C C8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C93F60  90 05 00 00 */	stw r0, 0(r5)
/* 80C93F64  90 85 00 04 */	stw r4, 4(r5)
/* 80C93F68  90 65 00 08 */	stw r3, 8(r5)
/* 80C93F6C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C93F70  4E 80 00 20 */	blr 
