lbl_80765058:
/* 80765058  3C C0 80 77 */	lis r6, __global_destructor_chain@ha
/* 8076505C  84 06 B9 C0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80765060  90 05 00 00 */	stw r0, 0(r5)
/* 80765064  90 85 00 04 */	stw r4, 4(r5)
/* 80765068  90 65 00 08 */	stw r3, 8(r5)
/* 8076506C  90 A6 00 00 */	stw r5, 0(r6)
/* 80765070  4E 80 00 20 */	blr 
