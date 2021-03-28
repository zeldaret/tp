lbl_8082F8D8:
/* 8082F8D8  3C C0 80 83 */	lis r6, __global_destructor_chain@ha
/* 8082F8DC  84 06 2F 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8082F8E0  90 05 00 00 */	stw r0, 0(r5)
/* 8082F8E4  90 85 00 04 */	stw r4, 4(r5)
/* 8082F8E8  90 65 00 08 */	stw r3, 8(r5)
/* 8082F8EC  90 A6 00 00 */	stw r5, 0(r6)
/* 8082F8F0  4E 80 00 20 */	blr 
