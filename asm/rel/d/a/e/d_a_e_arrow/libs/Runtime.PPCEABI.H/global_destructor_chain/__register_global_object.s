lbl_8067C758:
/* 8067C758  3C C0 80 68 */	lis r6, __global_destructor_chain@ha
/* 8067C75C  84 06 EB 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8067C760  90 05 00 00 */	stw r0, 0(r5)
/* 8067C764  90 85 00 04 */	stw r4, 4(r5)
/* 8067C768  90 65 00 08 */	stw r3, 8(r5)
/* 8067C76C  90 A6 00 00 */	stw r5, 0(r6)
/* 8067C770  4E 80 00 20 */	blr 
