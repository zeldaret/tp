lbl_80B9EC58:
/* 80B9EC58  3C C0 80 BA */	lis r6, __global_destructor_chain@ha
/* 80B9EC5C  84 06 F9 C8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B9EC60  90 05 00 00 */	stw r0, 0(r5)
/* 80B9EC64  90 85 00 04 */	stw r4, 4(r5)
/* 80B9EC68  90 65 00 08 */	stw r3, 8(r5)
/* 80B9EC6C  90 A6 00 00 */	stw r5, 0(r6)
/* 80B9EC70  4E 80 00 20 */	blr 
