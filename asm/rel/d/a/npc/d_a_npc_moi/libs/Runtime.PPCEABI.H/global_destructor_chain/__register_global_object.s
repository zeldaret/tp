lbl_80A73ED8:
/* 80A73ED8  3C C0 80 A8 */	lis r6, __global_destructor_chain@ha
/* 80A73EDC  84 06 BF A0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A73EE0  90 05 00 00 */	stw r0, 0(r5)
/* 80A73EE4  90 85 00 04 */	stw r4, 4(r5)
/* 80A73EE8  90 65 00 08 */	stw r3, 8(r5)
/* 80A73EEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80A73EF0  4E 80 00 20 */	blr 
