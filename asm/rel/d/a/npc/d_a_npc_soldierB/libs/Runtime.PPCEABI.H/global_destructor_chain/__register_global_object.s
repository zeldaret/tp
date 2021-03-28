lbl_80AF2C38:
/* 80AF2C38  3C C0 80 AF */	lis r6, __global_destructor_chain@ha
/* 80AF2C3C  84 06 5E 28 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AF2C40  90 05 00 00 */	stw r0, 0(r5)
/* 80AF2C44  90 85 00 04 */	stw r4, 4(r5)
/* 80AF2C48  90 65 00 08 */	stw r3, 8(r5)
/* 80AF2C4C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AF2C50  4E 80 00 20 */	blr 
