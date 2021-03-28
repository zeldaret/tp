lbl_80B71F38:
/* 80B71F38  3C C0 80 B7 */	lis r6, __global_destructor_chain@ha
/* 80B71F3C  84 06 50 28 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B71F40  90 05 00 00 */	stw r0, 0(r5)
/* 80B71F44  90 85 00 04 */	stw r4, 4(r5)
/* 80B71F48  90 65 00 08 */	stw r3, 8(r5)
/* 80B71F4C  90 A6 00 00 */	stw r5, 0(r6)
/* 80B71F50  4E 80 00 20 */	blr 
