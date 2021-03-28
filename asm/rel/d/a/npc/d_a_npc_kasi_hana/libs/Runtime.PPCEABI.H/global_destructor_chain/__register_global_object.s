lbl_80A1AF38:
/* 80A1AF38  3C C0 80 A2 */	lis r6, __global_destructor_chain@ha
/* 80A1AF3C  84 06 18 00 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A1AF40  90 05 00 00 */	stw r0, 0(r5)
/* 80A1AF44  90 85 00 04 */	stw r4, 4(r5)
/* 80A1AF48  90 65 00 08 */	stw r3, 8(r5)
/* 80A1AF4C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A1AF50  4E 80 00 20 */	blr 
