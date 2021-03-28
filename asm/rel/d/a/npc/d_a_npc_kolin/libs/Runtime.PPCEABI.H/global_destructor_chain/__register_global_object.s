lbl_80553F78:
/* 80553F78  3C C0 80 56 */	lis r6, __global_destructor_chain@ha
/* 80553F7C  84 06 B3 C8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80553F80  90 05 00 00 */	stw r0, 0(r5)
/* 80553F84  90 85 00 04 */	stw r4, 4(r5)
/* 80553F88  90 65 00 08 */	stw r3, 8(r5)
/* 80553F8C  90 A6 00 00 */	stw r5, 0(r6)
/* 80553F90  4E 80 00 20 */	blr 
