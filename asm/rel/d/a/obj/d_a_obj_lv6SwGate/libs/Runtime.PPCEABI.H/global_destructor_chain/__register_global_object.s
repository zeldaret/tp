lbl_80C73E98:
/* 80C73E98  3C C0 80 C7 */	lis r6, __global_destructor_chain@ha
/* 80C73E9C  84 06 57 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C73EA0  90 05 00 00 */	stw r0, 0(r5)
/* 80C73EA4  90 85 00 04 */	stw r4, 4(r5)
/* 80C73EA8  90 65 00 08 */	stw r3, 8(r5)
/* 80C73EAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C73EB0  4E 80 00 20 */	blr 
