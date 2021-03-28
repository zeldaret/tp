lbl_809F3038:
/* 809F3038  3C C0 80 A0 */	lis r6, __global_destructor_chain@ha
/* 809F303C  84 06 8E C0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809F3040  90 05 00 00 */	stw r0, 0(r5)
/* 809F3044  90 85 00 04 */	stw r4, 4(r5)
/* 809F3048  90 65 00 08 */	stw r3, 8(r5)
/* 809F304C  90 A6 00 00 */	stw r5, 0(r6)
/* 809F3050  4E 80 00 20 */	blr 
