lbl_80C8FD98:
/* 80C8FD98  3C C0 80 C9 */	lis r6, __global_destructor_chain@ha
/* 80C8FD9C  84 06 0A 48 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C8FDA0  90 05 00 00 */	stw r0, 0(r5)
/* 80C8FDA4  90 85 00 04 */	stw r4, 4(r5)
/* 80C8FDA8  90 65 00 08 */	stw r3, 8(r5)
/* 80C8FDAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C8FDB0  4E 80 00 20 */	blr 
