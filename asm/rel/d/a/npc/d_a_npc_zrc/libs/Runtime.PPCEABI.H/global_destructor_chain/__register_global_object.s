lbl_80B8DB98:
/* 80B8DB98  3C C0 80 B9 */	lis r6, __global_destructor_chain@ha
/* 80B8DB9C  84 06 3C 08 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B8DBA0  90 05 00 00 */	stw r0, 0(r5)
/* 80B8DBA4  90 85 00 04 */	stw r4, 4(r5)
/* 80B8DBA8  90 65 00 08 */	stw r3, 8(r5)
/* 80B8DBAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80B8DBB0  4E 80 00 20 */	blr 
