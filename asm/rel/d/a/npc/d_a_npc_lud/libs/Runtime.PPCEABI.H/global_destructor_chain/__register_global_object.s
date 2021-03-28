lbl_80A6AB38:
/* 80A6AB38  3C C0 80 A7 */	lis r6, __global_destructor_chain@ha
/* 80A6AB3C  84 06 0B 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A6AB40  90 05 00 00 */	stw r0, 0(r5)
/* 80A6AB44  90 85 00 04 */	stw r4, 4(r5)
/* 80A6AB48  90 65 00 08 */	stw r3, 8(r5)
/* 80A6AB4C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A6AB50  4E 80 00 20 */	blr 
