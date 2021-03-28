lbl_80B0C758:
/* 80B0C758  3C C0 80 B1 */	lis r6, __global_destructor_chain@ha
/* 80B0C75C  84 06 0C E8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B0C760  90 05 00 00 */	stw r0, 0(r5)
/* 80B0C764  90 85 00 04 */	stw r4, 4(r5)
/* 80B0C768  90 65 00 08 */	stw r3, 8(r5)
/* 80B0C76C  90 A6 00 00 */	stw r5, 0(r6)
/* 80B0C770  4E 80 00 20 */	blr 
