lbl_80D08758:
/* 80D08758  3C C0 80 D1 */	lis r6, __global_destructor_chain@ha
/* 80D0875C  84 06 BA B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D08760  90 05 00 00 */	stw r0, 0(r5)
/* 80D08764  90 85 00 04 */	stw r4, 4(r5)
/* 80D08768  90 65 00 08 */	stw r3, 8(r5)
/* 80D0876C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D08770  4E 80 00 20 */	blr 
